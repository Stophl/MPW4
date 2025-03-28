`timescale 1ns/1ps
`include "C:/Users/steining/Desktop/MPW2_1/sources/definitions.h"

module slow_control_fm(
                        clk40MHz,
                        wb_adr_o,
                        wb_wen_o,
                        wb_stb_o,
                        wb_ack_i,
                        wb_dat_o,
                        wb_dat_i
                       );

 input  wire            clk40MHz;
 output logic  [15:0]   wb_adr_o;
 output logic           wb_wen_o;
 output logic           wb_stb_o;
 input  logic           wb_ack_i;
 output logic [7:0]     wb_dat_o;
 input  wire  [7:0]     wb_dat_i;

 logic [7:0]            wb_read_dat;

 task wishbone_write;
  input [15:0] adr;
  input [7:0]  value;

  begin
   @(posedge clk40MHz)
   #1 wb_adr_o = adr;
   wb_dat_o = value;
   wb_wen_o = 1'b1;
   wb_stb_o = 1'b1;
   @(posedge clk40MHz)
   #1 wb_adr_o = 16'h0;
   wb_dat_o = 8'h0;
   wb_wen_o = 1'b0;
   wb_stb_o = 1'b0;
  end
 endtask

 task wishbone_read;
  input [15:0] adr;

  begin
   @(posedge clk40MHz)
   wb_adr_o = adr;
   wb_stb_o = 1'b1;
   @(posedge wb_ack_i)
   wb_read_dat = wb_dat_i;
   @(posedge clk40MHz)
   wb_adr_o = 16'h0;
   wb_stb_o = 1'b0;
  end
 endtask

 initial
  begin
   wb_adr_o  = 16'b0;
   wb_wen_o  = 1'b0;
   wb_stb_o  = 1'b0;
   wb_dat_o  = 8'h0;
   wb_read_dat = 8'h0;
  end

endmodule
