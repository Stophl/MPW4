`timescale 1ns/1ps

module clock_reset_generator(
                        clk640MHz_o,
                        clk40MHz_o,
                        ext_clk640MHz_i,
                        ext_rst_n_i,
                        rst_n_o
                        );

 output logic           clk640MHz_o;
 output logic           clk40MHz_o;
 input  logic           ext_clk640MHz_i;
 input  logic           ext_rst_n_i;
 output logic           rst_n_o;

 logic                  clk320MHz_r;
 logic                  clk160MHz_r;
 logic                  clk80MHz_r;
 logic                  clk40MHz_r;
 logic                  clk320MHz;
 logic                  clk160MHz;
 logic                  clk80MHz;
 logic                  clk40MHz;
 logic                  rst640MHz_n_r;
 logic                  rst640MHz_n_rr;
 logic                  rst320M_n_r;
 logic                  rst320M_n_rr;
 logic                  rst160M_n_r;
 logic                  rst160M_n_rr;
 logic                  rst80M_n_r;
 logic                  rst80M_n_rr;
 logic                  rst40M_n_r;
 logic                  rst40M_n_rr;

 assign clk640MHz_o = ext_clk640MHz_i;
 assign clk40MHz_o  = clk40MHz;
 assign rst640MHz_n = rst640MHz_n_rr;
 assign rst_n_o     = rst40M_n_rr;

 //Clock dividers
 always @(posedge ext_clk640MHz_i or negedge rst640MHz_n)
  if (!rst640MHz_n) clk320MHz_r <= 1'b0;
  else clk320MHz_r <= ~clk320MHz_r;

 always @(posedge clk320MHz_r or negedge rst640MHz_n)
  if (!rst640MHz_n) clk160MHz_r <= 1'b0;
  else clk160MHz_r <= ~clk160MHz_r;

 always @(posedge clk160MHz_r or negedge rst640MHz_n)
  if (!rst640MHz_n) clk80MHz_r <= 1'b0;
  else clk80MHz_r <= ~clk80MHz_r;

 always @(posedge clk80MHz_r or negedge rst640MHz_n)
  if (!rst640MHz_n) clk40MHz_r <= 1'b0;
  else clk40MHz_r <= ~clk40MHz_r;

 //Clocks registered with the 640MHz clock in order to remove latencies caused by cascading
 //the clock dividers.
  always @(posedge ext_clk640MHz_i or negedge rst640MHz_n)
  if (!rst640MHz_n) clk320MHz <= 1'b0;
  else clk320MHz <= clk320MHz_r;

  always @(posedge ext_clk640MHz_i or negedge rst640MHz_n)
  if (!rst640MHz_n) clk160MHz <= 1'b0;
  else clk160MHz <= clk160MHz_r;

  always @(posedge ext_clk640MHz_i or negedge rst640MHz_n)
  if (!rst640MHz_n) clk80MHz <= 1'b0;
  else clk80MHz <= clk80MHz_r;

  always @(posedge ext_clk640MHz_i or negedge rst640MHz_n)
  if (!rst640MHz_n) clk40MHz <= 1'b0;
  else clk40MHz <= clk40MHz_r;

  //Reset generators.
  //Two FFDs (synchronizers) to avoid metastabilities.
  always @(posedge ext_clk640MHz_i or negedge ext_rst_n_i)
  if (!ext_rst_n_i) 
   begin
    rst640MHz_n_r  <= 1'b0;
    rst640MHz_n_rr <= 1'b0;
   end
  else 
   begin
    rst640MHz_n_r  <= 1'b1;
    rst640MHz_n_rr <= rst640MHz_n_r;
   end

  always @(posedge clk320MHz or negedge ext_rst_n_i)
  if (!ext_rst_n_i) 
   begin
    rst320M_n_r  <= 1'b0;
    rst320M_n_rr <= 1'b0;
   end
  else 
   begin
    rst320M_n_r  <= 1'b1;
    rst320M_n_rr <= rst320M_n_r;
   end

  always @(posedge clk160MHz or negedge ext_rst_n_i)
  if (!ext_rst_n_i) 
   begin
    rst160M_n_r  <= 1'b0;
    rst160M_n_rr <= 1'b0;
   end
  else 
   begin
    rst160M_n_r  <= 1'b1;
    rst160M_n_rr <= rst160M_n_r;
   end

  always @(posedge clk80MHz or negedge ext_rst_n_i)
  if (!ext_rst_n_i) 
   begin
    rst80M_n_r  <= 1'b0;
    rst80M_n_rr <= 1'b0;
   end
  else 
   begin
    rst80M_n_r  <= 1'b1;
    rst80M_n_rr <= rst80M_n_r;
   end

  always @(posedge clk40MHz or negedge ext_rst_n_i)
  if (!ext_rst_n_i) 
   begin
    rst40M_n_r  <= 1'b0;
    rst40M_n_rr <= 1'b0;
   end
  else 
   begin
    rst40M_n_r  <= 1'b1;
    rst40M_n_rr <= rst40M_n_r;
   end

endmodule
