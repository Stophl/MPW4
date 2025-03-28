/****************************************************************
 *    I2C Slave - Wishbone Master                               *
 *    CERN IP Library                                           *
 *    Version 1.2 (2019.JAN)                                    *
 *    Alessandro Caratelli <alessandro.caratelli@cern.ch>       *
 ****************************************************************

This file is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties
of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright holders be
liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or
in connection with this file or the use or other dealings in the file. */

//`define clkgate_cell

module I2C_slave_WB_master #(
        parameter                  ADRLEN  = 1,      //number of address bytes
        parameter                  DATLEN  = 1,      //number of data bytes
        parameter                  TIMEOUT = 1023)(  //timeout in clock cycles (if 0, no watchdog implemented)
        input                      clock,            //system clock (f_clk > 2*f_I2C)
        input                      reset,            //asyncronous reset active high PS: LOW!!
        input                      useclkgating,     //if 1 enable the clock gating
        input               [6:0]  ADDRESS,          //I2C address (7 bit mode only)
        input                      I2C_SCL,          //I2C SCL connect to pad input
        output                     I2C_SDA_o,        //I2C SDA connect to pad enable (enable if low)
        input                      I2C_SDA_i,        //I2C SDA connect to pad inpinut
        output reg [8*ADRLEN-1:0]  wb_adr_o,         //wishbone address
        output reg                 wb_wen_o,         //wishbone write enable
        output reg                 wb_stb_o,         //wishbone strobe
        input                      wb_ack_i,         //wishbone acknoledge
        input      [8*DATLEN-1:0]  wb_dat_i,         //wishbone data from slave to master
        output reg [8*DATLEN-1:0]  wb_dat_o,         //wishbone data from master to slave
        output reg                 enable            //enable flag
        );

        // tmrg default triplicate

        parameter  cntsize =  (DATLEN>ADRLEN) ? ((DATLEN>=2)?DATLEN:2) : ((ADRLEN>=2)?ADRLEN:2);
        localparam [2:0] IDLE=3'd0, ADRI2C=3'd1, WBADRRX=3'd2, WBDATRX=3'd3, WBDATTX=3'd4;

        wire clk_enable, clk_en_sig, close;
        wire scl_posedge, scl_negedge;
        reg  start, stop, close_del;
        reg  SCLc, SDAc, SDA_del, SCL_del;
        wire wb_ack_ik, wb_ack_m;
        wire [8*DATLEN-1:0] wb_dat_ik, wb_dat_m;

        wire startVoted      = start;
        wire stopVoted       = stop;
        wire close_delVoted  = close_del;
        wire SCLcVoted       = SCLc;
        wire SDAcVoted       = SDAc;
        wire SDA_delVoted    = SDA_del;
        wire SCL_delVoted    = SCL_del;

        reg                   [2:0] state;
        reg                   [3:0] i;
        reg        [(DATLEN*8)-1:0] buffer;
        reg   [$clog2(cntsize)-1:0] cyclecnt;
        reg   [$clog2(TIMEOUT)-1:0] timeoutcnt;
        reg                         close_d;
        wire                  [2:0] stateVoted      = state;
        wire                  [3:0] iVoted          = i;
        wire       [(DATLEN*8)-1:0] bufferVoted     = buffer;
        wire  [$clog2(cntsize)-1:0] cyclecntVoted   = cyclecnt;
        wire  [$clog2(TIMEOUT)-1:0] timeoutcntVoted = timeoutcnt;
        wire                        close_dVoted    = close_d;
        wire                        wb_ack_iVoted   = wb_ack_m;
        wire         [8*DATLEN-1:0] wb_dat_iVoted   = wb_dat_m;

        reg  [8*ADRLEN-1:0] wb_adr_od;
        reg  [8*DATLEN-1:0] wb_dat_od;
        wire [8*DATLEN-1:0] wb_dat_odVoted  = wb_dat_od;
        wire [8*ADRLEN-1:0] wb_adr_odVoted  = wb_adr_od;

        reg  I2C_SDA_od;
        reg  wb_wen_od;
        reg  wb_stb_od;
        reg  enable_d;
        reg  wb_wen_oc;
        wire I2C_SDA_odVoted = I2C_SDA_od;
        wire wb_wen_odVoted  = wb_wen_od;
        wire wb_stb_odVoted  = wb_stb_od;
        wire enable_dVoted   = enable_d;

        assign I2C_SDA_o  = I2C_SDA_odVoted;
        assign wb_ack_m   = wb_ack_i;
        assign wb_dat_m   = wb_dat_i;
        assign wb_ack_ik  = wb_ack_iVoted;
        assign wb_dat_ik  = wb_dat_iVoted;
        assign wb_adr_o   = wb_adr_odVoted;
        assign wb_wen_o   = wb_wen_odVoted;
        assign wb_stb_o   = wb_stb_odVoted;
        assign wb_dat_o   = wb_dat_odVoted;
        assign enable     = enable_dVoted ;
        assign clk_enable = (useclkgating) ? enable_dVoted : 1'b1;
        assign clk_en_sig = clk_enable | startVoted;

    //    `ifdef clkgate_cell
        // sobstitute CKLNQD1 with clock gating cell available in your library
    //    wire  clock_g;
    //    CKLNQD1 ClkGate (.TE(1'b0), .E(clk_en_sig), .CP(clock), .Q(clock_g));
    //    `else
        reg en_clk_latched;
        reg clock_g;
        always@(clock or clk_en_sig) begin
            if (~clock) en_clk_latched = clk_en_sig;
        end
        always@(clock or en_clk_latched) begin
            clock_g = clock & en_clk_latched;
        end
     //   `endif

        assign scl_posedge = ~SCL_delVoted & SCLcVoted;
        assign scl_negedge = SCL_delVoted & ~SCLcVoted;

        always @(posedge clock or negedge reset) begin
                if(!reset) begin
                        SCLc      <= 1'b0;
                        SCL_del   <= 1'b0;
                        SDAc      <= 1'b0;
                        SDA_del   <= 1'b0;
                end
                else begin
                        SCLc      <= #1  I2C_SCL;
                        SCL_del   <= #1  SCLcVoted;
                        SDAc      <= #1  I2C_SDA_i;
                        SDA_del   <= #1  SDAcVoted;
                end
        end

        always @(posedge clock or negedge reset) begin //GET_START_CONDITION
                if(!reset)
            start <= #1  1'b0;
                else if(SCLcVoted & ~SDAcVoted & SDA_delVoted)
            start <= #1  1'b1;
                else
            start <= #1  1'b0;
        end

        always @(posedge clock or negedge reset) begin //GET_STOP_CONDITION
                if(!reset)
            stop <= #1  1'b0;
                else if(SCLcVoted & SDAcVoted & ~SDA_delVoted)
            stop <= #1  1'b1;
                else
            stop <= #1  1'b0;
        end

        always @(posedge clock or negedge reset) begin
                if (!reset) enable_d <= #1  1'b0;
                else begin
                        if (startVoted)
                enable_d <= #1  1'b1;
                        else begin
                                if (stopVoted || close_delVoted)
                    enable_d <= #1  1'b0;
                                else
                    enable_d <= #1  enable_dVoted;
            end
                end
        end

        always @* begin
                if(!enable_dVoted)
                        I2C_SDA_od = 1'b1;
                else
                        casez({stateVoted, iVoted})
                                {ADRI2C, 4'd9}:    I2C_SDA_od = (wb_dat_odVoted[7:1] == ADDRESS) || (wb_dat_odVoted[7:1] == 7'b0000000) ? 1'b0 : 1'b1;
                                {WBADRRX,4'd8}:    I2C_SDA_od = 1'b0;
                                {WBDATRX,4'd8}:    I2C_SDA_od = 1'b0;
                                {WBDATTX,4'b0???}: I2C_SDA_od = bufferVoted[(8*DATLEN)-1];
                                default:           I2C_SDA_od = 1'b1;
                        endcase
                if(!enable_dVoted)
                        wb_wen_oc = 1'b0;
                else
                        case(stateVoted)
                                WBDATRX: wb_wen_oc = 1'b1;
                                default: wb_wen_oc = 1'b0;
                endcase
        end


        always @(posedge clock_g or negedge reset) begin
                if(!reset) begin
                        wb_stb_od <= #1  1'b0;
                        wb_wen_od <= #1  1'b0;
                end else begin
                         wb_wen_od <= #1  wb_wen_oc;
                        if((stateVoted==WBDATRX) && (cyclecntVoted==(DATLEN-1)) && (iVoted==4'd7) && scl_negedge)
                                wb_stb_od <= #1  1'b1; //give a strobe to read the data
                        else if((stateVoted==WBDATTX) && (cyclecntVoted==(DATLEN-1)) && (iVoted==4'd7) && scl_negedge)
                                wb_stb_od <= #1  1'b1; //give a strobe to read the data
                        else if ((stateVoted==ADRI2C) && (wb_dat_odVoted[0]) && (cyclecntVoted==0) && (iVoted==4'd8) && scl_negedge)
                                wb_stb_od <= #1  1'b1; //give a strobe to read the data
                        else if(wb_ack_ik)
                                wb_stb_od <= #1  1'b0; //clear the strobe after the acknoledge from the wb slave
                        else
                                wb_stb_od <= #1  wb_stb_odVoted;
                end
        end

        // I2C state machine
        always @(posedge clock_g or negedge reset) begin //I2C_STATE_MACHINE
                if(!reset) begin
                        state     <= #1  IDLE;
                        i         <= #1  4'b0;
                        wb_adr_od <= #1 16'b0;
                        wb_dat_od <= #1  8'b0;
                        cyclecnt  <= #1  1'b0;
                        buffer    <= #1  8'b0;
                end
                else begin
                        state     <= #1  stateVoted;
                        i         <= #1  iVoted;
                        wb_adr_od <= #1  wb_adr_odVoted;
                        wb_dat_od <= #1  wb_dat_odVoted;
                        cyclecnt  <= #1  cyclecntVoted;
                        buffer    <= #1  bufferVoted;

                        if (startVoted) begin
                                state     <= #1  ADRI2C;
                                i         <= #1  4'b0;
                                wb_dat_od <= #1  8'b0;
                                cyclecnt  <= #1  1'b0;
                                buffer    <= #1  8'b0;
                        end
                        else if (stopVoted | close) begin
                                state <= #1  IDLE;
                                wb_dat_od <= #1   8'b0;
                        end
                        else case (stateVoted)

                                IDLE: begin
                                        state     <= #1  IDLE;
                                        i         <= #1  4'b0;
                                        wb_dat_od <= #1  8'b0;
                                        cyclecnt  <= #1  1'b0;
                                        buffer    <= #1  8'b0;
                                end

                                ADRI2C: begin //st_ADR
                                        i <= #1  (scl_negedge) ? (iVoted+4'b1) : iVoted;
                                        if (iVoted<9 && scl_posedge) begin
                                                        wb_dat_od[7:0] <= #1  {wb_dat_odVoted[6:0], SDAcVoted};
                                                        //reuse the wb_dat_od buffer to save registers
                                        end
                                        else if(iVoted==9) begin
                                                if (scl_negedge) begin
                                                        if((wb_dat_odVoted[7:1] != ADDRESS) && (wb_dat_odVoted[7:1] != 7'b0010000))
                                                                // slave address or broadcast address
                                                                state <= #1  IDLE;
                                                        else begin
                                                                if (wb_dat_odVoted[0]) begin
                                                                        state <= #1  WBDATTX;
                                                                        wb_adr_od <= #1  wb_adr_odVoted + 1'b1;
                                                                end
                                                                else begin
                                                                        state <= #1  WBADRRX;
                                                                        wb_adr_od <= #1  wb_adr_odVoted;
                                                                end
                                                                i <= #1  0;
                                                                cyclecnt <= #1  {$clog2(cntsize){1'b0}};
                                                        end
                                                end
                                                if (wb_ack_ik & wb_dat_odVoted[0])
                                                        buffer <= #1  wb_dat_ik;
                                        end
                                end

                                WBADRRX: begin //st_WBADRRX
                                        i <= #1  (scl_negedge) ? (iVoted+4'b1) : iVoted;
                                        if (iVoted<8 && scl_posedge) begin
                                                        wb_adr_od <= #1  {wb_adr_odVoted, SDAcVoted};
                                        end
                                        else if(iVoted==8 && scl_negedge) begin
                                                i <= #1  0;
                                                if (cyclecntVoted >= (ADRLEN-1)) begin
                                                        cyclecnt <= #1  {$clog2(cntsize){1'b0}};
                                                        state <= #1  WBDATRX;
                                                end
                                                else cyclecnt <= #1  cyclecntVoted + 1'b1;
                                        end
                                end

                                WBDATRX: begin //st_WBDATRX
                                        i <= #1  (scl_negedge) ? (iVoted+4'b1) : iVoted;
                                        if (iVoted<8 && scl_posedge) begin
                                                        wb_dat_od <= #1  {wb_dat_odVoted, SDAcVoted};
                                        end
                                        else if(iVoted==8 && scl_negedge) begin
                                                i <= #1  0;
                                                if (cyclecntVoted >= (DATLEN-1)) begin
                                                        cyclecnt <= #1  0;
                                                        wb_adr_od <= #1  wb_adr_odVoted + 1'b1;
                                                end
                                                else cyclecnt <= #1  cyclecntVoted + 1'b1;
                                        end
                                end

                                WBDATTX: begin //st_WBDATTX
                                        i <= #1  (scl_negedge) ? (iVoted+4'b1) : iVoted;
                                        if (iVoted<8 && scl_negedge) begin
                                                        buffer <= #1  bufferVoted << 1;
                                        end
                                        else if(iVoted==8) begin
                                                if (scl_posedge && SDAcVoted) begin //no_ack
                                                        state <= #1  IDLE;
                                                end
                                                else if (scl_negedge) begin
                                                        i <= #1  0;
                                                        if (cyclecntVoted >= (DATLEN-1)) begin
                                                                cyclecnt <= #1  0;
                                                                wb_adr_od <= #1  wb_adr_odVoted + 1'b1;
                                                        end
                                                        else cyclecnt <= #1  cyclecntVoted + 1'b1;
                                                end
                                                if (wb_ack_ik)
                                                        buffer <= #1  wb_dat_ik;
                                        end
                                end

                                default: state <= #1  IDLE;

                        endcase
                end
        end

        assign close = (timeoutcntVoted==0);

        always @(posedge clock_g or negedge reset) begin
                if(!reset) timeoutcnt <= #1  TIMEOUT;
                else begin
                        if( (SCL_delVoted==SCLcVoted) && (SDA_delVoted==SDAcVoted) && enable_dVoted)
                                timeoutcnt <= #1  timeoutcntVoted-1;
                        else
                                timeoutcnt <= #1  TIMEOUT;
                end
        end

        always @(posedge clock or negedge reset) begin
                if(!reset) begin
                        close_d   <= #1  1'b0;
                        close_del <= #1  1'b0;
                end
                else begin
                        close_d <= #1  close;
                        close_del <= #1  close_dVoted;
                end
        end

        /*
        initial begin //adr_check
                static bit [6:0] reserved[$] = {7'b0000000, 7'b0000001, 7'b0000010, 7'b0000011, 7'b0000100, 7'b0000101, 7'b0000110, 7'b0000111, 7'b1111000, 7'b1111001, 7'b1111010, 7'b1111011, 7'b1111100, 7'b1111101, 7'b1111110, 7'b1111111}, id[$];
                id = reserved.find_first with( item == ADDRESS);
                 assert(id.size()===0)
                else $display("\nERROR: The address [0x%2h] is reserved according the I2C standard\n", ADDRESS);
        end
        */

endmodule
