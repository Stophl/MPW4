`timescale 1ns/1ps
`include "C:/Users/steining/Desktop/MPW2_1/sources/definitions.h"

module periphery(
                        // clk40MHz_o, //not needed anymore outside periphery
                        // rst_n_o, //not needed anymore outside periphery
                        ext_clk640MHz_i,
                        ext_rst_n_i,

                        //I2C I/F
                        I2C_SCL_i,
                        I2C_SDA_o,
                        I2C_SDA_i,

                        //Readout control signals
                        //eoc_data_i,
                        // eoc_rd_o,
                        // eoc_rqt_data_o,
                        // eoc_token_i,

                        //Time stamp generator control signals
                        // ts_ini_val_o,
                        // ts_enable_o,
                        // ts_set_val_o,

                        //Wishbone I/F
                        // wb_adr_o,
                        // wb_wen_o,
                        // wb_stb_o,
                        // wb_dat_o,

                        //Signals from/to matrix
                        ADDR_OUT_B,
                        TS_LE_out_B,
                        TS_TE_out_B,
                        TS,
                        HIT_OUT,
                        HB,
                        FREEZE,
                        HB_EN_COL,
                        READ,
                        CK1,
                        CK2,
                        LD,
                        SER_IN,
                        SER_OUT,
                        SHIFT_EN
                        );

 //Clk & reset
 input  logic           ext_clk640MHz_i;
 input  logic           ext_rst_n_i;
 // output logic           clk40MHz_o;
 // output logic           rst_n_o;

 //I2C
 input  logic           I2C_SCL_i;
 output logic           I2C_SDA_o;
 input  logic           I2C_SDA_i;

 //Readout control signals
 // input  logic [31:0]    eoc_data_i [`DCOL-1:0];
 // output logic           eoc_rd_o;
 // output logic           eoc_rqt_data_o;
 // input  logic           eoc_token_i;

 //Time stamp generator control signals
 // output  logic [7:0]    ts_ini_val_o;
 // output  logic          ts_enable_o;
 // output  logic          ts_set_val_o;

 //Wishbone
 // output logic [15:0]    wb_adr_o;
 // output logic           wb_wen_o;
 // output logic           wb_stb_o;
 // output logic [7:0]     wb_dat_o;

 // Signals from/to Matrix (Signals named as in MAtrix (IO) - Probably not the best way) NEW NEW NEW
 input wire [7:0]      ADDR_OUT_B [`DCOL-1:0];     //ADDR data Bus (1 per DCOL)
 input wire [7:0]      TS_LE_out_B [`DCOL-1:0];    //LE data Bus (1 per DCOL)
 input wire [7:0]      TS_TE_out_B [`DCOL-1:0];    //TE data Bus (1 per DCOL)
 output logic [7:0]    TS;                         //TS data Bus (1 for all)
 input logic           HIT_OUT [`DCOL-1:0];        //HIT_OUT  Signal (1 per DCOL)
 inout wire            HB [`DCOL-1:0];             //HB Signal (1 per DCOL) INOUT???? WHAT TO DO WITH THIS SIGNAL?

 output logic           FREEZE [`DCOL-1:0];        // DATA CONTROL Busses (PixReadOutCntrl)
 output logic           HB_EN_COL [`DCOL-1:0];     // DATA CONTROL Busses (PixReadOutCntrl)
 output logic           READ [`DCOL-1:0];            // DATA CONTROL Busses (PixReadOutCntrl)

 output logic           CK1  [`DCOL-1:0];          // PixConf I/F Signal
 output logic           CK2 [`DCOL-1:0];           // PixConf I/F Signal
 output logic [7:0]     LD [`DCOL-1:0];            // PixConf I/F Signal
 output logic           SER_OUT [`DCOL-1:0];       // PixConf I/F Signal TO Matrix
 input logic            SER_IN [`DCOL-1:0];        // PixConf I/F Signal FROM Matrix
 output logic           SHIFT_EN [`DCOL-1:0];      // PixConf I/F Signal

 //Wishbone
 logic [15:0]           wb_adr;
 logic                  wb_wen;
 logic                  wb_stb;
 logic                  wb_ack;
 logic                  wb_ack_from_csr;
 logic [7:0]            wb_dat_from_csr;
 logic [7:0]            wb_dat_to;
 logic [7:0]            wb_dat_from;
 logic                  wb_val;
 logic                  wb_val_from_csr;
 logic [7:0]            wb_dat_from_matrix [`DCOL-1:0];
 logic [`DCOL-1:0]      wb_val_from_matrix;
 logic [`DCOL-1:0]      wb_ack_from_matrix;

 //Readout control signals
logic [31:0]            eoc_data [`DCOL-1:0];
logic                   eoc_rd;
logic                   eoc_rqt_data;
logic                   eoc_token;

//Time stamp generator control signals
logic [7:0]             ts_ini_val;
logic                   ts_enable;
logic                   ts_set_val;

 //fifo
 logic [31:0]           tx_fifo_rdata;
 logic [31:0]           tx_fifo_wdata;
 logic                  tx_fifo_empty;
 logic                  tx_fifo_full;
 logic                  tx_fifo_rd_n;
 logic                  tx_fifo_wr_n;

 logic                  clk40MHz;
 logic                  rst_n;

 // assign clk40MHz_o  = clk40MHz;
 // assign rst_n_o  = rst_n;
 // assign wb_adr_o = wb_adr;
 // assign wb_wen_o = wb_wen;
 // assign wb_stb_o = wb_stb;
 // assign wb_dat_o = wb_dat_to;

 //Slow control block with read and write task in the wishbone bus.Used to speed up simulations.
 //Read and write operations with I2C may take tens or even hundreds of clock cycles to be performed.
 //If SLOW_CONTROL_FM is defined in the definitions.h file, the slow control fm is used. If it isn't
 //I2C is used.

 `ifdef SLOW_CONTROL_FM

 slow_control_fm slow_control_fm_block(
                        .clk40MHz                (clk40MHz           ),
                        .wb_adr_o                (wb_adr             ),
                        .wb_wen_o                (wb_wen             ),
                        .wb_stb_o                (wb_stb             ),
                        .wb_ack_i                (wb_ack             ),
                        .wb_dat_o                (wb_dat_to          ),
                        .wb_dat_i                (wb_dat_from        )
                        );

 assign I2C_SDA_o = 1'b0;

 `else

 wire [6:0] chipID;
 assign chipID = 7'h00; //To determine how to set this parameter. Probably with I/O pads.

 I2C_slave_WB_master #(
                        .ADRLEN                 (`ADRLEN             ), //number of address bytes
                        .DATLEN                 (`DATLEN             ), //number of data bytes
                        .TIMEOUT                (`TIMEOUT            )
                        ) //timeout in clock cycles (if 0, no watchdog implemented)
                        I2C_slave_WB_master_block(
                        .clock                  (clk40MHz            ), //system clock (f_clk > 2*f_I2C)
                        .reset                  (rst_n               ), //asyncronous reset active low
                        .useclkgating           (1'b0                ), //if 1 enable the clock gating
                        .ADDRESS                (chipID              ), //I2C address (7 bit mode only)
                        .I2C_SCL                (I2C_SCL_i           ), //I2C SCL connect to pad input
                        .I2C_SDA_o              (I2C_SDA_o           ), //I2C SDA connect to pad enable (enable if low)
                        .I2C_SDA_i              (I2C_SDA_i           ), //I2C SDA connect to pad inpinut
                        .wb_adr_o               (wb_adr              ), //wishbone address
                        .wb_wen_o               (wb_wen              ), //wishbone write enable
                        .wb_stb_o               (wb_stb              ), //wishbone strobe
                        .wb_ack_i               (wb_ack              ), //wishbone acknoledge
                        .wb_dat_i               (wb_dat_from         ), //wishbone data from slave to master
                        .wb_dat_o               (wb_dat_to           ), //wishbone data from master to slave
                        .enable                 (                    )  //enable flag
                      );
 `endif

// TS GENERATOR NEW NEW NEW NEW NEW
//*************************************************************************************************
//*                                 8-bits TIME STAMP GENERATOR                                   *
//*************************************************************************************************
//
// Time stamp generator. It is a binary counter but it should be replaced by a gray counter in
// order to reduce the power consumption.
//
//*************************************************************************************************

always_ff @(posedge clk40MHz)
 if (!rst_n) TS <= 8'h0;
 else if (ts_set_val) TS <= ts_ini_val;
       else if (ts_enable) TS <= TS + 8'h1;


//
//*************************************************************************************************
//*                                 EOCs                                 *
//*************************************************************************************************

//
//*************************************************************************************************
 wire [`DCOL:0]         eoc_token_next;
 wire [15:0]            wb_base_adr_i [`DCOL-1:0];
 assign eoc_token_next[`DCOL] = 1'b0; // token input for the last EOC
 assign eoc_token = eoc_token_next[0]; // token output for the first EOC

 generate
  for (genvar i=0; i < `DCOL; i=i+1)

   begin: EOCs

     //assign wb_base_adr_i[i] = (16'h0020 << i); //PS: for now, this will work, but this cannot be a shift operator with 32 DCOls
     assign wb_base_adr_i[i] = {6'b00_0000,i[4:0],5'b0_0000};
     eoc_rtl eoc_block(
                         .clk40MHz_i    (clk40MHz           ), //Wishbone I/F
                         .HIT_OUT       (HIT_OUT[i]         ), //PixReadOutData I/F
                         .FREEZE        (FREEZE[i]          ), //PixReadOutCntrl I/F
                         // .TS         (TS[i]              ), //PixReadOutData I/F
                         .TS_LE_B       (TS_LE_out_B[i]         ), //PixReadOutData I/F
                         .TS_TE_B       (TS_TE_out_B[i]         ), //PixReadOutData I/F
                         .ADDR_OUT_B    (ADDR_OUT_B[i]      ), //PixReadOutData I/F
                         .READ          (READ[i]              ), //PixReadOutCntrl I/F
                         .rst_n_i       (rst_n              ), //Wishbone I/F
                         .CK1           (CK1[i]             ), //PixConf I/F
                         .CK2           (CK2[i]             ), //PixConf I/F
                         .HB_EN_COL     (HB_EN_COL[i]       ), //PixReadOutCntrl I/F
                         .LD            (LD[i]              ), //PixConf I/F
                         .SER_IN        (SER_IN[i]         ), //PixConf I/F
                         .SER_OUT       (SER_OUT[i]          ), //PixConf I/F
                         .SHIFT_EN      (SHIFT_EN[i]        ), //PixConf I/F

                         //EOC token and data
                         .eoc_addr_i    (i[7:0]                  ), //ColumnReadOut I/F
                         .eoc_data_o    (eoc_data[i]        ), //ColumnReadOut I/F
                         .eoc_rd_i      (eoc_rd             ), //ColumnReadOut I/F
                         .eoc_rqt_data_i(eoc_rqt_data       ), //ColumnReadOut I/F
                         .eoc_token_next_o(eoc_token_next[i]), //ColumnReadOut I/F
                         .eoc_token_prev_i(eoc_token_next[i+1]), //ColumnReadOut I/F

                         //Wishbone interface
                         .wb_adr_i      (wb_adr                 ), //Wishbone I/F
                         .wb_base_adr_i (wb_base_adr_i[i]       ), //Wishbone I/F
                         .wb_wen_i      (wb_wen                 ), //Wishbone I/F
                         .wb_stb_i      (wb_stb                 ), //Wishbone I/F
                         .wb_ack_o      (wb_ack_from_matrix[i]  ), //Wishbone I/F
                         .wb_dat_o      (wb_dat_from_matrix[i]  ), //Wishbone I/F
                         .wb_dat_i      (wb_dat_to              ), //Wishbone I/F
                         .wb_val_o      (wb_val_from_matrix[i]  )  //Wishbone I/F

                         //Slow control
                         // .ts_ini_val_i  (ts_ini_val       ), //Slow control I/F
                         // .ts_enable_i   (ts_enable        ), //Slow control I/F
                         // .ts_set_val_i  (ts_set_val       )  //Slow control I/F
                         );
  end
 endgenerate

 control_status_registers control_status_registers_fm_block(
                        .clk40MHz_i              (clk40MHz           ),
                        .rst_n_i                 (rst_n              ),

                        //Wishbone interface
                        .wb_adr_i                (wb_adr             ),
                        .wb_base_adr_i           (`WB_BASE_ADR_CSR   ),
                        .wb_wen_i                (wb_wen             ),
                        .wb_stb_i                (wb_stb             ),
                        .wb_ack_o                (wb_ack_from_csr    ),
                        .wb_dat_o                (wb_dat_from_csr    ),
                        .wb_dat_i                (wb_dat_to          ),
                        .wb_val_o                (wb_val_from_csr    ),

                        //Time stamp generator control signals
                        .ts_ini_val_o            (ts_ini_val       ),
                        .ts_enable_o             (ts_enable        ),
                        .ts_set_val_o            (ts_set_val       )

                        //More control signals will be added. For instance all signals needed to
                        //to configure the analog bias block.
                        );


 control_unit_fm control_unit_fm_block(
                        .clk40MHz_i              (clk40MHz           ),
                        .rst_n_i                 (rst_n              ),

                         //Readout control signals
                        .eoc_rd_o                (eoc_rd             ), //Readout I/F
                        .eoc_rqt_data_o          (eoc_rqt_data       ), //Readout I/F
                        .eoc_token_i             (eoc_token          ), //Readout I/F
                        .tx_fifo_full_i          (tx_fifo_full       ),
                        .tx_fifo_wr_n_o          (tx_fifo_wr_n       )
                        );

 data_transmission_unit_fm data_transmission_unit_fm_block(
                        .clk640MHz_i             (clk640MHz          ),
                        .clk40MHz_i              (clk40MHz           ),
                        .rst_n_i                 (rst_n              ),
                        .tx_fifo_rdata_i         (tx_fifo_rdata      ),
                        .tx_fifo_empty_i         (tx_fifo_empty      ),
                        .tx_fifo_rd_n_o          (tx_fifo_rd_n       )
                        );


 //Only the EOC with the token will place data in the bus. The others place 0s in their buses.
 //All data buses are ORed.
 //Note that current version only "ORs" 5 buses. A parametrizable solution needs to be found in
 //order to OR all the buses.
 assign tx_fifo_wdata = eoc_data[0] |
                        eoc_data[1] |
                        eoc_data[2] |
                        eoc_data[3] |
                        eoc_data[4];
// Patrick: probably a for-loop would do?
// integer i;
// assign tx_fifo_wdata = 32'h0000_0000;
// always_comb begin
//     for(i=0; i< `DCOL, i=i+1) begin
//         assign tx_fifo_wdata = tx_fifo_wdata | eoc_data[i];
//     end //for
// end //always_comb


 //IP from ChipWare
 CW_fifo_s2_sf #(
                        .width         (32),
                        .depth         (8)
                     )

 tx_fifo_block(
		        .clk_push                (clk40MHz           ),
		        .clk_pop                 (clk40MHz           ),
		        .rst_n                   (rst_n              ),
		        .push_req_n              (tx_fifo_wr_n       ),
		        .pop_req_n               (tx_fifo_rd_n       ),
                        .data_in                 (tx_fifo_wdata      ),
                        .push_empty              (),
		        .push_ae                 (),
		        .push_hf                 (),
		        .push_af                 (),
		        .push_full               (tx_fifo_full       ),
                        .push_error              (),
		        .pop_empty               (tx_fifo_empty      ),
		        .pop_ae                  (),
		        .pop_hf                  (),
		        .pop_af                  (),
                        .pop_full                (),
		        .pop_error               (),
		        .data_out                (tx_fifo_rdata      )
		        );

 wishbone_bus wishbone_bus_block(
                        //Wishbone interface
                        .wb_ack_o                (wb_ack             ),
                        .wb_dat_from_o           (wb_dat_from        ),
                        .wb_ack_from_csr_i       (wb_ack_from_csr    ),
                        .wb_dat_from_csr_i       (wb_dat_from_csr    ),
                        .wb_val_from_csr_i       (wb_val_from_csr    ),
                        .wb_ack_from_matrix_i    (wb_ack_from_matrix),
                        .wb_dat_from_matrix_i    (wb_dat_from_matrix),
                        .wb_val_from_matrix_i    (wb_val_from_matrix)
                        );

 clock_reset_generator clock_reset_generator_fm(
                        .clk640MHz_o             (clk640MHz          ),
                        .clk40MHz_o              (clk40MHz           ),
                        .ext_clk640MHz_i         (ext_clk640MHz_i    ),
                        .ext_rst_n_i             (ext_rst_n_i        ),
                        .rst_n_o                 (rst_n              )
                        );

endmodule
