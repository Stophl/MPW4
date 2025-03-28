`timescale 1ns/1ps

module data_transmission_unit_fm(
                        clk640MHz_i,
                        clk40MHz_i,
                        rst_n_i,
                        tx_fifo_rdata_i,
                        tx_fifo_empty_i,
                        tx_fifo_rd_n_o
                        );

 input  logic           clk640MHz_i;
 input  logic           clk40MHz_i;
 input  logic           rst_n_i;
 input  logic [31:0]    tx_fifo_rdata_i;
 input  logic           tx_fifo_empty_i;
 output logic           tx_fifo_rd_n_o;

 logic  [31:0]          data_to_ser;

 always
  begin
   tx_fifo_rd_n_o = 1'b1;
   @(posedge clk40MHz_i)
    if (!tx_fifo_empty_i)
     begin
      #1 tx_fifo_rd_n_o = 1'b0;
      @(posedge clk40MHz_i)
      #1 tx_fifo_rd_n_o = 1'b1;
      data_to_ser = tx_fifo_rdata_i;
     end
  end

endmodule
