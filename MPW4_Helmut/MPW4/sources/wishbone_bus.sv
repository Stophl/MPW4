`timescale 1ns/1ps
`include "C:/Users/steining/Desktop/MPW2_1/sources/definitions.h"

module wishbone_bus(
                        wb_ack_o,
                        wb_dat_from_o,
                        wb_ack_from_csr_i,
                        wb_dat_from_csr_i,
                        wb_val_from_csr_i,
                        wb_ack_from_matrix_i,
                        wb_dat_from_matrix_i,
                        wb_val_from_matrix_i
                        );

 output logic           wb_ack_o;
 output logic [7:0]     wb_dat_from_o;
 input  logic           wb_ack_from_csr_i;
 input  logic [7:0]     wb_dat_from_csr_i;
 input  logic [`DCOL-1:0] wb_ack_from_matrix_i;
 input  logic [7:0]     wb_dat_from_matrix_i [`DCOL-1:0];
 input  logic           wb_val_from_csr_i;
 input  logic [`DCOL-1:0] wb_val_from_matrix_i;

 logic [4:0]            wb_val_from_matrix_t;    //Each EOC generates one wishbone valid signal.
                                                 //Bus with valid signals from EOC cells.
                                                 //Current matrix only have 5 double columns.


 //The code shown below is not fully parametrizable. Here we have 5 double columns but it should be
 //extended to `DCOL.

 //Encoder
 always_comb
  case (wb_val_from_matrix_i)
   5'b00001: wb_val_from_matrix_t = 5'd1;
   5'b00010: wb_val_from_matrix_t = 5'd2;
   5'b00100: wb_val_from_matrix_t = 5'd3;
   5'b01000: wb_val_from_matrix_t = 5'd4;
   5'b10000: wb_val_from_matrix_t = 5'd5;
    default: wb_val_from_matrix_t = 5'd0;
  endcase

 //Bus multiplexer
 always_comb
  case({wb_val_from_csr_i, wb_val_from_matrix_t})
   6'b000001: begin
               wb_dat_from_o = wb_dat_from_matrix_i[0];
               wb_ack_o = wb_ack_from_matrix_i[0];
              end
   6'b000010: begin
               wb_dat_from_o = wb_dat_from_matrix_i[1];
               wb_ack_o = wb_ack_from_matrix_i[1];
              end
   6'b000011: begin
               wb_dat_from_o = wb_dat_from_matrix_i[2];
               wb_ack_o = wb_ack_from_matrix_i[2];
              end
   6'b000100: begin
               wb_dat_from_o = wb_dat_from_matrix_i[3];
               wb_ack_o = wb_ack_from_matrix_i[3];
              end
   6'b000101: begin
               wb_dat_from_o = wb_dat_from_matrix_i[4];
               wb_ack_o = wb_ack_from_matrix_i[4];
              end
   6'b100000: begin
               wb_dat_from_o = wb_dat_from_csr_i;
               wb_ack_o = wb_ack_from_csr_i;
              end
   default:   begin
               wb_dat_from_o = 8'h0;
               wb_ack_o = 1'b0;
              end
  endcase

endmodule
