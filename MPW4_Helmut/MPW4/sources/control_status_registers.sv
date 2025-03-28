`timescale 1ns/1ps
`include "C:/Users/steining/Desktop/MPW2_1/sources/definitions.h"

module control_status_registers(
                        clk40MHz_i,
                        rst_n_i,
                        //Wishbone interface
                        wb_adr_i,
                        wb_base_adr_i,
                        wb_wen_i,
                        wb_stb_i,
                        wb_ack_o,
                        wb_dat_o,
                        wb_dat_i,
                        wb_val_o,

                        //Slow control
                        ts_ini_val_o,
                        ts_enable_o,
                        ts_set_val_o
                        );

 input  wire            clk40MHz_i;              //40 MHz clock.
 input  wire            rst_n_i;                 //Synchronous reset. Active low.

 input  wire  [15:0]    wb_adr_i;                //Wishbone bus address.
 input  wire  [15:0]    wb_base_adr_i;           //Base address of the block.
 input  wire            wb_wen_i;                //Wishbone write signal. Active high.
 input  wire            wb_stb_i;                //Wishbone ... (to be completed)
 output logic           wb_ack_o;                //Wishbone ... (to be completed)
 output logic [7:0]     wb_dat_o;                //Wishbone ... (to be completed)
 input  wire  [7:0]     wb_dat_i;                //Wishbone ... (to be completed)
 output logic           wb_val_o;                //Wishbone ... (to be completed)

 output logic [7:0]     ts_ini_val_o;            //Initial value of the 8-bits time stamp counter.
 output logic           ts_enable_o;             //Enables/disables time stamp counter. Actve high.
 output logic           ts_set_val_o;            //While high ts_ini_val_o is loaded in the time
                                                 //stamp counter.

 logic [7:0]            conf_reg_ts_ini;         //Control register CONF_REG_TS_INI:
                                                 // -conf_reg_ts_ini[7:0]: ts_ini_val_o
 logic [7:0]            conf_reg_ts_cnt;         //Control register CONF_REG_TS_CNT:
                                                 // -conf_reg_ts_cnt[7:2]: no use.
                                                 // -conf_reg_ts_cnt[1]  : ts_enable_o
                                                 // -conf_reg_ts_cnt[0]  : ts_set_val_o

 //*************************************************************************************************
 //*                                        WISHBONE FM                                            *
 //*************************************************************************************************

 // wb_ack_o is always stb_i
 assign wb_ack_o = wb_stb_i && wb_val_o; //PS: should not come immediately, only when reg is written + must go down after reg written!

 // Block selection. If the wb_adr_i addresses one of the registers in the block, then the block is
 //selected, that is, wb_val_o is set to high.
 assign wb_val_o = (wb_base_adr_i[15:5] == wb_adr_i[15:5]);

 //Control registers
 //-CONF_REG_TS_INI
 //-CONF_REG_TS_CNT
 always @(posedge clk40MHz_i or negedge rst_n_i)
  if (!rst_n_i)
   begin
    conf_reg_ts_ini <= 8'h0;
    conf_reg_ts_cnt <= 8'h0;
   end
  else if (wb_val_o && wb_wen_i && wb_stb_i)
    case(wb_adr_i[4:0])
     `CONF_REG_TS_INI :  conf_reg_ts_ini <= wb_dat_i;
     `CONF_REG_TS_CNT :  conf_reg_ts_cnt <= wb_dat_i;
    endcase

 // Whishbone read operation
 always@(*)
    case(wb_adr_i[4:0])
     `CONF_REG_TS_INI :  wb_dat_o = conf_reg_ts_ini;
     `CONF_REG_TS_CNT :  wb_dat_o = conf_reg_ts_cnt;
    endcase

 // Control signal decoder
 assign ts_ini_val_o = conf_reg_ts_ini;
 assign ts_enable_o  = conf_reg_ts_cnt[0];
 assign ts_set_val_o = conf_reg_ts_cnt[1];

endmodule
