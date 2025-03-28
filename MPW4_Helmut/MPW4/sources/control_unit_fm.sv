`timescale 1ns/1ps
`include "C:/Users/steining/Desktop/MPW2_1/sources/definitions.h"

module control_unit_fm(
                        clk40MHz_i,
                        rst_n_i,

                        eoc_rd_o,
                        eoc_rqt_data_o,
                        eoc_token_i,
                        tx_fifo_full_i,
                        tx_fifo_wr_n_o
                        );

 input  logic           clk40MHz_i;                        //40 MHz clock.
 input  logic           rst_n_i;                           //Synchronous reset. Active low.

 //Readout control signals
 output logic           eoc_rd_o;                          //Reads
 output logic           eoc_rqt_data_o;                    //Request data from eoc. Active high. When high, the EOC
                                                           //will readout the pixel with the highest priority and with
                                                           //a hit in the double column. Each EOC with data available
                                                           //will rise a flag which will be propagated through a token.
                                                           //The token is passed from one EOC to the other
 input  logic           eoc_token_i;                       //Token EOC. It indicates that one or more EOC have data
                                                           //available to be readout.

 input  logic           tx_fifo_full_i;
 output logic           tx_fifo_wr_n_o;

 logic                  continous_readout;

 initial
  begin
   eoc_rd_o = 1'b0;
   eoc_rqt_data_o = 1'b0;
   tx_fifo_wr_n_o = 1'b1;
   continous_readout = 1'b0;
  end

 //Simple task to read data from one of the EOCs.
 task read_data;
  begin
   @(posedge clk40MHz_i)
   #1 eoc_rqt_data_o = 1'b1;
   // @(posedge eoc_token_i)
   while(eoc_token_i)
    begin
     @(posedge clk40MHz_i)
     #1 eoc_rqt_data_o = 1'b0;
     #1 eoc_rd_o = 1'b1;
     #1 tx_fifo_wr_n_o = !eoc_token_i;
    end
   @(posedge clk40MHz_i)
    #1 eoc_rd_o = 1'b0;
    #1 tx_fifo_wr_n_o = 1'b1;
  end
 endtask

 always @(posedge clk40MHz_i)
  if (continous_readout)
   begin
    #1 eoc_rqt_data_o = 1'b1;
    @(posedge eoc_token_i)
    while(eoc_token_i)
     begin
      @(posedge clk40MHz_i)
      #1 eoc_rqt_data_o = 1'b0;
      #1 eoc_rd_o = 1'b1;
      #1 tx_fifo_wr_n_o = !eoc_token_i;
     end
    @(posedge clk40MHz_i)
     #1 eoc_rd_o = 1'b0;
     #1 tx_fifo_wr_n_o = 1'b1;
   end

 //Serializer tasks need to be added
endmodule
