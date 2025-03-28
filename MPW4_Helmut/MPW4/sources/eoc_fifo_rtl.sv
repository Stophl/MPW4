`timescale 1ns/1ps
`include "C:/Users/steining/Desktop/MPW2_1/sources/definitions.h"

module eoc_rtl(
clk40MHz_i,
HIT_OUT,
FREEZE,
// TS,
TS_LE_B,
TS_TE_B,
ADDR_OUT_B,
READ,
rst_n_i,
CK1,
CK2,
HB_EN_COL,
LD,
SER_IN,
SER_OUT,
SHIFT_EN,

eoc_addr_i,
eoc_data_o,
eoc_rd_i,
eoc_rqt_data_i,
eoc_token_next_o,
eoc_token_prev_i,

//Wishbone interface
wb_adr_i,
wb_base_adr_i,
wb_wen_i,
wb_stb_i,
wb_ack_o,
wb_dat_o,
wb_dat_i,
wb_val_o
);

input  logic           clk40MHz_i;
input  logic           HIT_OUT;
output logic           FREEZE;
inout  wire [7:0]      TS_LE_B;
inout  wire [7:0]      TS_TE_B;
inout  wire [7:0]      ADDR_OUT_B;
output logic           READ;
input  logic           rst_n_i;
// output logic [7:0]     TS;

output logic           CK1;
output logic           CK2;
output logic           HB_EN_COL;
output logic [7:0]     LD;
input  logic           SER_IN;
output logic           SER_OUT;
output logic           SHIFT_EN;


input  logic [7:0]     eoc_addr_i;
output logic [31:0]    eoc_data_o;
input  logic           eoc_rqt_data_i;
input  logic           eoc_rd_i;

output logic           eoc_token_next_o;
input  logic           eoc_token_prev_i;

input  logic [15:0]    wb_adr_i;
input  logic [15:0]    wb_base_adr_i;
input  logic           wb_wen_i;
input  logic           wb_stb_i;
output logic           wb_ack_o;
output logic [7:0]     wb_dat_o;
input  logic [7:0]     wb_dat_i;
output logic           wb_val_o;


logic [7:0]            conf_reg_pix0;
logic [7:0]            conf_reg_pix1;
logic [7:0]            conf_reg_pix2;
logic [7:0]            conf_reg_pix3;
logic [7:0]            conf_reg_pix4;
logic [7:0]            conf_reg_pix5;
logic [7:0]            conf_reg_pix6;
logic [7:0]            conf_reg_pix7;
logic [7:0]            conf_reg_pix8;
logic [7:0]            conf_reg_pix9;
logic [7:0]            conf_reg_pix10;
logic [7:0]            conf_reg_pix11;
logic [7:0]            conf_reg_pix12;
logic [7:0]            conf_reg_pix13;
logic [7:0]            conf_reg_pix14;
logic [7:0]            conf_reg_pix15;
logic [7:0]            conf_reg_eoc;
logic [2:0]            conf_bit;
logic                  shift_ini;

logic [`NPIX+2:0]          serializer;
logic                  shift_done; //to prevent multiple - shifting
logic                  shift_in_progress; // to prevent WB cycles during shifting
int                    shift_cyc_counter; // `NPIX+2 cycles
logic                  load;
int                    foo, foo1, foo2;

logic [7:0]            ADDR;
logic [7:0]            TS_LE;
logic [7:0]            TS_TE;

logic eoc_flag;
logic load_data;

logic                  hit_out_reg;
logic [23:0]           fifo_data_in;
logic [23:0]           fifo_data_out;
logic                  fifo_push_req_n;
logic                  fifo_pop_req_n;
logic                  fifo_push_full;
logic                  fifo_pop_empty;

assign ADDR     = ~ADDR_OUT_B;
assign TS_LE    = ~TS_LE_B;
assign TS_TE    = ~TS_TE_B;

//*************************************************************************************************
//*                                        WISHBONE FM                                            *
//*************************************************************************************************
//
// There are 10 wishbone registers of 8-bits, conf_reg_pix0 to conf_reg_pix9, used to configure one
// of the 8 different digital control signals of one pixel.
//
// 8-bits * 10 registers = 80 configuration bits, one for each pixel in the double column
//
// There is an additional 8-bits wishbone register, conf_reg_eoc, used to control the configuration
// process of the pixels and to configure the pixels.
// conf_reg_eoc[2:0]:
// -3'b000: `TDAC0
// -3'b001: `TDAC1
// -3'b010: `TDAC2
// -3'b011: `TDAC3
// -3'b100: `MASK
// -3'b101: `ENINJ
// -3'b110: `ENHB
// -3'b111: `ENSFOUT
//
// conf_reg_eoc[3]: double column configuration enabled. Active high. It initializes a FSM which
//                  handles a 80-bits register.
//
// conf_reg_eoc[4]: to handle HB_EN_COL. Active high.
//  -1'b0: HB_EN_COL disabled
//  -1'b1: HB_EN_COL enabled
//
// conf_reg_eoc[5]: SHIFT R/W Active high.
//  -1'b0: WRITE mode for shift
//  -1'b1: READ mode for shift
//*************************************************************************************************

// wb_ack_o is always stb_i
// assign wb_ack_o = wb_stb_i && (!shift_in_progress); The ACK is set in the FSM now

assign wb_val_o = (wb_base_adr_i[15:5] == wb_adr_i[15:5]);

always @(posedge clk40MHz_i or negedge rst_n_i)
if (!rst_n_i)
begin
conf_reg_pix0 <= 8'h0;
conf_reg_pix1 <= 8'h0;
conf_reg_pix2 <= 8'h0;
conf_reg_pix3 <= 8'h0;
conf_reg_pix4 <= 8'h0;
conf_reg_pix5 <= 8'h0;
conf_reg_pix6 <= 8'h0;
conf_reg_pix7 <= 8'h0;
conf_reg_pix8 <= 8'h0;
conf_reg_pix9 <= 8'h0;
conf_reg_pix10 <= 8'h0;
conf_reg_pix11 <= 8'h0;
conf_reg_pix12 <= 8'h0;
conf_reg_pix13 <= 8'h0;
conf_reg_pix14 <= 8'h0;
conf_reg_pix15 <= 8'h0;
conf_reg_eoc  <= 8'h0;
end //if
else
begin
//conf_reg_eoc[5] <= SHIFT_EN; // PS: we should not do this. This writes the WB register without the Bus
if (wb_val_o && wb_wen_i && wb_stb_i && (!shift_in_progress)) // Wishbone write operation
case(wb_adr_i[4:0])
    5'd0 : conf_reg_pix0 <= wb_dat_i;
    5'd1 : conf_reg_pix1 <= wb_dat_i;
    5'd2 : conf_reg_pix2 <= wb_dat_i;
    5'd3 : conf_reg_pix3 <= wb_dat_i;
    5'd4 : conf_reg_pix4 <= wb_dat_i;
    5'd5 : conf_reg_pix5 <= wb_dat_i;
    5'd6 : conf_reg_pix6 <= wb_dat_i;
    5'd7 : conf_reg_pix7 <= wb_dat_i;
    5'd8 : conf_reg_pix8 <= wb_dat_i;
    5'd9 : conf_reg_pix9 <= wb_dat_i;
    5'd10 : conf_reg_pix10 <= wb_dat_i;
    5'd11 : conf_reg_pix11 <= wb_dat_i;
    5'd12 : conf_reg_pix12 <= wb_dat_i;
    5'd13 : conf_reg_pix13 <= wb_dat_i;
    5'd14 : conf_reg_pix14 <= wb_dat_i;
    5'd15 : conf_reg_pix15 <= wb_dat_i;
    5'd16 : conf_reg_eoc  <= wb_dat_i;
endcase
else if (wb_val_o && !wb_wen_i && wb_stb_i && (!shift_in_progress)) // Whishbone read operation
    case(wb_adr_i[4:0])
    5'd0 : wb_dat_o = conf_reg_pix0;
    5'd1 : wb_dat_o = conf_reg_pix1;
    5'd2 : wb_dat_o = conf_reg_pix2;
    5'd3 : wb_dat_o = conf_reg_pix3;
    5'd4 : wb_dat_o = conf_reg_pix4;
    5'd5 : wb_dat_o = conf_reg_pix5;
    5'd6 : wb_dat_o = conf_reg_pix6;
    5'd7 : wb_dat_o = conf_reg_pix7;
    5'd8 : wb_dat_o = conf_reg_pix8;
    5'd9 : wb_dat_o = conf_reg_pix9;
    5'd10 : wb_dat_o = conf_reg_pix10;
    5'd11 : wb_dat_o = conf_reg_pix11;
    5'd12 : wb_dat_o = conf_reg_pix12;
    5'd13 : wb_dat_o = conf_reg_pix13;
    5'd14 : wb_dat_o = conf_reg_pix14;
    5'd15 : wb_dat_o = conf_reg_pix15;
    5'd16 : wb_dat_o = conf_reg_eoc;
    endcase
end //of

// conf_reg_pixEoc decoding
assign conf_bit  = conf_reg_eoc[2:0];
assign shift_ini  = conf_reg_eoc[3];
assign readout_ini = conf_reg_eoc[4];
assign shift_rw  = conf_reg_eoc[5];

//*************************************************************************************************
//*                        DOUBLE COLUMN CONFIGURATION FSM + SHIFT REGISTER                       *
//*************************************************************************************************
//
// Functional model of state machine + shift register. The state machine has 4 states:
//  -IDLE: FSM waits for shift_ini from low to high to start double column configuration. When
//         shift_ini goes from low to high, the data to be transferred to the pixels are loaded into
//         the 80-bits shift registers and the FSM transitions to state SHIFT.
//  -SHIFT:
//  -LOAD: (PS)
//  -RUN: (PS)
//*************************************************************************************************

localparam [1:0] // 4 states
     UNINIT = 2'b00, // STATE 0
     IDLE = 2'b01, // STATE 1
     SHIFT = 2'b10, // STATE 2
     READOUT = 'b11; // STATE 3
reg[1:0] STATE, NEXT_STATE;

// CLOCKED STATE LOGIC
always_ff @(posedge clk40MHz_i or negedge rst_n_i)
    if(!rst_n_i) // go to state UNINIT if reset
        STATE <= UNINIT;
    else // otherwise update the states
        STATE <= NEXT_STATE;

// COMB LOGIC NEXT_STATE
always_comb begin
    case(STATE)
        UNINIT:
            if(!shift_ini && !readout_ini) begin //neither SHIFT nor READOUT
                NEXT_STATE = IDLE;
            end
            else NEXT_STATE = UNINIT;
        IDLE:
            if(shift_ini && !shift_done)
                NEXT_STATE = SHIFT;
            else if (readout_ini)
                NEXT_STATE = READOUT;
            else NEXT_STATE = IDLE;

        SHIFT:
            if (shift_done)
                NEXT_STATE = IDLE;
            else
                NEXT_STATE = SHIFT;

        READOUT:
            if (!readout_ini)
                NEXT_STATE = IDLE;
            else
                NEXT_STATE = READOUT;
    endcase
end

// Some Logic outside the FSM for Configuring pixels
// always_ff @(negedge clk40MHz_i) CK1 <= 1'b0;

always_comb
 begin
  LD = 7'b0;
  case (conf_bit)
   `TDAC0 : LD[0]   = load;
   `TDAC1 : LD[1]   = load;
   `TDAC2 : LD[2]   = load;
   `TDAC3 : LD[3]   = load;
   `MASK  : LD[4]   = load;
   `ENINJ : LD[5]   = load;
   `ENHB  : LD[6]   = load;
   `ENSFOUT:LD[7]   = load;
   endcase
 end

assign CK1 = clk40MHz_i & shift_in_progress;
assign CK2 = !CK1 & shift_in_progress;

assign serializer = {1'b0, conf_reg_pix15, conf_reg_pix14,
           conf_reg_pix13, conf_reg_pix12,
           conf_reg_pix11, conf_reg_pix10,
           conf_reg_pix9, conf_reg_pix8,
           conf_reg_pix7, conf_reg_pix6,
           conf_reg_pix5, conf_reg_pix4,
           conf_reg_pix3, conf_reg_pix2,
           conf_reg_pix1, conf_reg_pix0, 1'b0}; //attach two bits which are set at last clock cycle

assign SER_OUT = serializer[shift_cyc_counter]; // This makes only sense for writing, for reading, we don't care.


always_ff @(posedge clk40MHz_i) begin
    case(STATE)
        UNINIT: begin
            SHIFT_EN <=  1'b1;
            shift_cyc_counter <= 1'b0;
            shift_done <= 1'b0;
            load <= 1'b0;
            shift_in_progress  <= 1'b0;
            wb_ack_o <= wb_stb_i && wb_val_o; // in This state, we can always ACK
        end // UNINIT
        IDLE: begin
            wb_ack_o <= wb_stb_i && wb_val_o;
            if(!shift_ini && shift_done)
                shift_done <= 1'b0; // to start another shift, one needs to set shift_done back to 0. This is to prevent restarting the shifting
        end // IDLE
        SHIFT: begin
            wb_ack_o <= 1'b0; //never ACK in this State
            // FREEZE <= '1; // This keeps last data in the Pixels
            case (shift_rw)
                1'b0 : begin// WRITE
                    if (shift_cyc_counter < `NPIX) begin // SHIFTING (128 clocks)
                        SHIFT_EN   <= 1'b1;
                        shift_in_progress <= 1'b1;
                        shift_cyc_counter <= shift_cyc_counter + 1'b1;
                        load <= 1'b0;
                        // if (shift_cyc_counter == `NPIX -1) SHIFT_EN  <= 1'b0;
                    end
                    //else if (shift_cyc_counter == `NPIX) begin // PS: This WAIT is probably not needed
                    //        SHIFT_EN   <= 1'b0;
                    //        shift_cyc_counter <= shift_cyc_counter + 1'b1;
                //end
                    else if (shift_cyc_counter == `NPIX) begin //
                            load <= 1'b1;
                            shift_in_progress <= 1'b0;
                            shift_done <= 1'b1; //will stay one more cycle in this state
                            shift_cyc_counter <= shift_cyc_counter + 1'b1;
                    end
                    else if (shift_cyc_counter == `NPIX +1) begin //
                            load <= 1'b0;
                            SHIFT_EN   <= 1'b0;
                            shift_cyc_counter <= '0;
                    end
                end // shift_cyc_counter

                1'b1 : begin //READ
                    // if (shift_cyc_counter == 0) begin
                    //     SHIFT_EN <= 1'b1;
                    //     load <= 1'b0;
                    //     shift_in_progress <= 1'b1;
                    //     shift_cyc_counter <= shift_cyc_counter + 1'b1;
                    // end
                    if (shift_cyc_counter == 0) begin // SHIFTING (1 clock)
                        SHIFT_EN   <= 1'b0;
                        load <= 1'b1;
                        shift_in_progress <= 1'b1;
                        shift_cyc_counter <= shift_cyc_counter + 1'b1;
                    end
                    else if (shift_cyc_counter < `NPIX) begin // SHIFTING (127 clock)
                        SHIFT_EN   <= 1'b1;
                        load <= 1'b0;
                        shift_in_progress <= 1'b1;
                        if (shift_cyc_counter == `NPIX-1) begin
                            shift_done <= 1'b1; //will stay one more cycle in this state
                        end
                        shift_cyc_counter <= shift_cyc_counter + 1'b1;
                    end
                    else if (shift_cyc_counter == `NPIX) begin //one more clock
                        SHIFT_EN   <= 1'b0;
                        shift_in_progress <= 1'b0;
                        shift_cyc_counter <= '0;
                    end

                end// shift_cyc_counter
            endcase // shift_rw
        end //SHIFT
        READOUT: begin
            wb_ack_o <= wb_stb_i && wb_val_o;
        end //READOUT
    endcase
end



// logic [79:0] serializer;
// integer      numberOfShifts;
// integer      pixel;
//
// always
// begin
// //Data is stored into the shift register when shift_ini
// @(posedge shift_ini)
// serializer = {conf_reg_pix9, conf_reg_pix8,
// conf_reg_pix7, conf_reg_pix6,
// conf_reg_pix5, conf_reg_pix4,
// conf_reg_pix3, conf_reg_pix2,
// conf_reg_pix1, conf_reg_pix0};
//
// SHIFT_EN   = 1'b1;
// for (numberOfShifts = 0; numberOfShifts < `NPIX; numberOfShifts++)
// begin
// @(posedge clk40MHz_i)
// pixel = 79 - numberOfShifts;
// SER_OUT = serializer[pixel];
// CK1 = 1'b0;
// @(posedge clk40MHz_i)
// CK1 = 1'b1;
// end
// case (conf_bit)
// `TDAC0 : begin
// @(posedge clk40MHz_i)
// LD[0]    = 1'b1;
// @(posedge clk40MHz_i)
// LD[0]    = 1'b0;
// end
// `TDAC1 : begin
// @(posedge clk40MHz_i)
// LD[1]    = 1'b1;
// @(posedge clk40MHz_i)
// LD[1]    = 1'b0;
// end
// `TDAC2 : begin
// @(posedge clk40MHz_i)
// LD[2]    = 1'b1;
// @(posedge clk40MHz_i)
// LD[2]    = 1'b0;
// end
// `TDAC3 : begin
// @(posedge clk40MHz_i)
// LD[3]    = 1'b1;
// @(posedge clk40MHz_i)
// LD[3]    = 1'b0;
// end
// `MASK  : begin
// @(posedge clk40MHz_i)
// LD[4]    = 1'b1;
// @(posedge clk40MHz_i)
// LD[4]    = 1'b0;
// end
// `ENINJ : begin
// @(posedge clk40MHz_i)
// LD[5]    = 1'b1;
// @(posedge clk40MHz_i)
// LD[5]    = 1'b0;
// end
// `ENHB  : begin
// @(posedge clk40MHz_i)
// LD[6]    = 1'b1;
// @(posedge clk40MHz_i)
// LD[6]    = 1'b0;
// end
// `ENSFOUT: begin
// @(posedge clk40MHz_i)
// LD[7]    = 1'b1;
// @(posedge clk40MHz_i)
// LD[7]    = 1'b0;
// end
// endcase
// SHIFT_EN = 1'b0;
// end



//*************************************************************************************************
//*                                 EOC control Unit                                   *
//*************************************************************************************************
//
// EOC control unit: manages the readout of the double column. It is handled by another control unit
//that manages the readout of all the EOCs.
//
//*************************************************************************************************

assign HB_EN_COL = readout_ini; // This starts putting data on Bus of the DCOL

//HIT_OUT is the output of a priority OR chain. It is registered in order to facilitate time budget
//during the synthesis.
always_ff @(posedge clk40MHz_i) begin //ev. 2. synch stage einbauen
    if (!rst_n_i) hit_out_reg <= 1'b0;
    else hit_out_reg <= HIT_OUT;
end

assign eoc_token_next_o = eoc_flag | eoc_token_prev_i;


//******* FSM to FILL FIFO**********//
localparam [1:0] // 3 states
     FILL_UNINIT = 2'b00,
     FILL_IDLE = 2'b01,
     FILL_FIFO = 2'b10;
reg[1:0] FILL_STATE, FILL_NEXT_STATE;

// CLOCKED STATE LOGIC
always_ff @(posedge clk40MHz_i or negedge rst_n_i)
    if(!rst_n_i) // go to state UNINIT if reset
        FILL_STATE <= FILL_UNINIT;
    else // otherwise update the states
        FILL_STATE <= FILL_NEXT_STATE;

// COMB LOGIC NEXT_STATE
always_comb begin
    case(FILL_STATE)
        FILL_UNINIT:
            FILL_NEXT_STATE = FILL_IDLE; // always jump to IDLE
        FILL_IDLE:
            if(readout_ini)
                FILL_NEXT_STATE = FILL_FIFO;
            else FILL_NEXT_STATE = FILL_IDLE;
        FILL_FIFO:
            if (readout_ini)
                FILL_NEXT_STATE = FILL_FIFO;
            else
                FILL_NEXT_STATE = FILL_IDLE;
    endcase
end

logic fill_cyc;

always_ff @(posedge clk40MHz_i) begin
    case(FILL_STATE)
        FILL_UNINIT: begin
            READ <= 1'b0;
            fifo_push_req_n <= 1'b1;
            fill_cyc <= 1'b0;
        end // UNINIT
        FILL_IDLE: begin // Do we need second state here?
            READ <= 1'b0;
            fifo_push_req_n <= 1'b1;
            fill_cyc <= 1'b0;
        end // IDLE
        FILL_FIFO: begin
            if (!fill_cyc && hit_out_reg && (!fifo_push_full)) begin
                READ <= 1'b1; // EOC has to toggle (Pixel implementation!)
                fifo_push_req_n <= 1'b0;
                fill_cyc <= 1'b1;
            end
            else begin
                READ = 1'b0;
                fifo_push_req_n <= 1'b1;
                fill_cyc <= 1'b0;
            end
        end
    endcase
end

// always
// begin
// @(posedge clk40MHz_i)
// begin
// #1 READ = 1'b0;
// fifo_push_req_n = 1'b1;
// if (hit_out_reg && (!fifo_push_full))
// begin
// READ = 1'b1;
// fifo_push_req_n = 1'b0;
// @(posedge clk40MHz_i)
// #1 READ = 1'b0;
// fifo_push_req_n = 1'b1;
// end
// end
// end

//******* FSM to READ FIFO**********//
localparam [1:0] // 3 states
     READ_UNINIT = 2'b00,
     READ_IDLE = 2'b01,
     READ_FIFO = 2'b10;
reg[1:0] READ_STATE, READ_NEXT_STATE;

// CLOCKED STATE LOGIC
always_ff @(posedge clk40MHz_i or negedge rst_n_i)
    if(!rst_n_i) // go to state UNINIT if reset
        READ_STATE <= READ_UNINIT;
    else // otherwise update the states
        READ_STATE <= READ_NEXT_STATE;

// COMB LOGIC NEXT_STATE
always_comb begin
    case(READ_STATE)
        READ_UNINIT:
            READ_NEXT_STATE = READ_IDLE; // always jump to IDLE
        READ_IDLE:
            if(readout_ini) // This uses the same signal than the FILL FSM -> Should we use another one?
                READ_NEXT_STATE = READ_FIFO;
            else READ_NEXT_STATE = READ_IDLE;
        READ_FIFO:
            if (readout_ini)
                READ_NEXT_STATE = READ_FIFO;
            else
                READ_NEXT_STATE = READ_IDLE;
    endcase
end

logic [1:0] read_cyc;

always_ff @(posedge clk40MHz_i)
    case(READ_STATE)
        READ_UNINIT: begin
            load_data <= '0;
            FREEZE <= '1;
            fifo_pop_req_n <= 1'b1;
            read_cyc <= 1'b0;
        end // UNINIT
        READ_IDLE: begin
            load_data <= '0;
            read_cyc <= 1'b0;
        end // IDLE
        READ_FIFO: begin
            if (read_cyc == 2'b00 && eoc_rqt_data_i && (!fifo_pop_empty)) begin
                // $display("\n foo1 %d",$time);
                load_data <= 1'b1;
                fifo_pop_req_n <= 1'b1;
                read_cyc <= 2'b01;
            end
            else if (read_cyc == 2'b01) begin
                // $display("\n foo2 %d",$time);
                load_data <= 1'b0;
                fifo_pop_req_n <= 1'b0;
                read_cyc <= 2'b10;
            end
            else begin
                // $display("\n foo3 %d",$time);
                load_data <= 1'b0;
                fifo_pop_req_n <= 1'b1;
                read_cyc <= 2'b00;
            end
        end
    endcase

// always
// begin
// @(posedge clk40MHz_i)
// begin
// #1 load_data = 1'b0;
// fifo_pop_req_n = 1'b1;
// if (eoc_rqt_data_i && (!fifo_pop_empty))
// begin
// load_data = 1'b1;
// @(posedge clk40MHz_i)
// #1 fifo_pop_req_n = 1'b0;
// load_data = 1'b0;
// end
// end
// end


assign fifo_data_in = {ADDR, TS_TE, TS_LE};

CW_fifo_s2_sf #(
.width         (24),
.depth         (8)
)

CW_fifo_s2_sf_block(
.clk_push                (clk40MHz_i         ),
.clk_pop                 (clk40MHz_i         ),
.rst_n                   (rst_n_i            ),
.push_req_n              (fifo_push_req_n    ),
.pop_req_n               (fifo_pop_req_n     ),
.data_in                 (fifo_data_in       ),
.push_empty              (),
.push_ae                 (),
.push_hf                 (),
.push_af                 (),
.push_full               (fifo_push_full     ),
.push_error              (),
.pop_empty               (fifo_pop_empty     ),
.pop_ae                  (),
.pop_hf                  (),
.pop_af                  (),
.pop_full                (),
.pop_error               (),
.data_out                (fifo_data_out      )
);

//Architecture 2. A FIFO storing data readout from the column.
logic [31:0] data_eoc_reg;
logic select_eoc;

always_ff @(posedge clk40MHz_i) begin
    if(!rst_n_i) data_eoc_reg <= 32'h0;
    else if (load_data) data_eoc_reg <= {eoc_addr_i, fifo_data_out};
end

always_ff @(posedge clk40MHz_i) begin
    if (!rst_n_i) eoc_flag <= 1'b0;
    else if (load_data) eoc_flag <= 1'b1;
    else if (eoc_rd_i && (!eoc_token_prev_i)) eoc_flag  <= 1'b0;
end

assign select_eoc = eoc_flag & (~eoc_token_prev_i);
assign eoc_data_o   = (select_eoc ? data_eoc_reg : 24'h0);


endmodule
