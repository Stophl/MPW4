//-------------------------------------------------------------------------
// Copyright (c) 1997-2009 Cadence Design Systems, Inc.  All rights reserved.
// This work may not be copied, modified, re-published, uploaded, executed,
// or distributed in any way, in any medium, whether in whole or in part,
// without prior written permission from Cadence Design Systems, Inc.
//------------------------------------------------------------------------

//------------------------------------------------------------------------
//  Abstract   : Simulation Architecture for CW_fifo_s2_sf
//  RC Release : 17.11-s014_1
//------------------------------------------------------------------------

//-----------------------------------------------------------------------
// Module         : CW_fifo_s2_sf
// Abstract       : Synchronous (Dual-Clock) FIFO with Static Flags 
//
//    Pin Name     Width             Direction       Function
//-----------------------------------------------------------------------
// clk_push        1 bit             Input           Input clock for push interface
// clk_pop         1 bit             Input           Input clock for pop interface
// rst_n           1 bit             Input           Reset input, active low
// push_req_n      1 bit             Input           FIFO push request, active low
// pop_req_n       1 bit             Input           FIFO pop request, active low
// data_in      width bit(s)         Input           FIFO data to push
// push_empty      1 bit             Output          FIFO empty a output flag
//                                                   synchronous to clk_push, active high
// push_ae         1 bit             Output          FIFO almost emptya output flag
//                                                   synchronous to clk_push, active high
// push_hf         1 bit             Output          FIFO half fulla output flag synchronous
//                                                   to clk_push, active  high
// push_af         1 bit             Output          FIFO almost fulla output flag
//                                                   synchronous to clk_push, 
// push_full       1 bit             Output          FIFO full output flag synchronous
//                                                   to clk_push, active high
// push_error      1 bit             Output          FIFO push error (overrun) output
//                                                   flag synchronous to clk_push
// pop_empty       1 bit             Output          FIFO empty output flag synchronous
//                                                   to clk_pop
// pop_ae          1 bit             Output          FIFO almost emptyb output flag
//                                                   synchronous to clk_pop, 
// pop_hf          1 bit             Output          FIFO half fullb output flag synchronous
//                                                   to clk_pop
// pop_af          1 bit             Output          FIFO almost fullb output flag synchronous
//                                                   to clk_pop, 
// pop_full        1 bit             Output          FIFO full output flag synchronous
//                                                   to clk_pop
// pop_error       1 bit             Output          FIFO pop error (underrun) output
//                                                   flag synchronous to clk_pop
// data_out    width bit(s)          Output          FIFO data to pop
//-----------------------------------------------------------------------
//
//    Parameter    Values             Description
//-----------------------------------------------------------------------
// width           1 to 256           Width of the data_in and data_out buses
//                                      Default: 8
// depth           4 to 256           Number of words that can be stored in FIFO
//                                      Default: 8
// push_ae_lvl     1 to depth-1       Almost empty level for the push_ae output port
//                                      Default: 2 
// push_af_lvl     1 to depth-1       Almost full level for the push_af output port 
//                                      Default: 2 
// pop_ae_lvl      1 to depth-1       Almost empty level for the pop_ae output port
//                                      Default: 2 
// pop_af_lvl      1 to depth-1       Almost full level for the pop_af output port
//                                      Default: 2
// err_mode        0 or 1             Error mode  Default: 0  
//                                      0 = stays active until reset [latched], 
//                                      1 = active only when error condition exists [unlatched])
// push_sync      1 to 3              Push flag synchronization mode Default: 2  
//                                      1 = single register synchronization from pop pointer,
//                                      2 = double register, 
//                                      3 = triple register
// pop_sync       1 to 3              Pop flag synchronization mode  Default: 2
//                                      1 = single register synchronization from pop pointer,
//                                      2 = double register, 
//                                      3 = triple register
// rst_mode       0 to 3              Reset mode  Default: 0
//                                      0 = asynchronous reset including memory,
//                                      1 = synchronous reset including memory,
//                                      2 = asynchronous reset excluding memory,
//                                      3 = synchronous reset excluding memory
//----------------------------------------------------------------------- 
module CW_fifo_s2_sf ( 
		       clk_push, 
		       clk_pop,
		       rst_n, 
		       push_req_n, 
		       pop_req_n,
                       data_in, 
                       push_empty, 
		       push_ae, 
		       push_hf, 
		       push_af, 
		       push_full,
                       push_error, 
		       pop_empty, 
		       pop_ae, 
		       pop_hf, 
		       pop_af,
                       pop_full, 
		       pop_error, 
		       data_out
		       );
 
//----------------------------------------------------------------------
// parameters declaration
//----------------------------------------------------------------------
   parameter width = 8;
   parameter depth = 8;
   parameter push_ae_lvl = 2;
   parameter push_af_lvl = 2;
   parameter pop_ae_lvl = 2;
   parameter pop_af_lvl = 2;
   parameter err_mode = 0;
   parameter push_sync = 2;
   parameter pop_sync = 1;
   parameter rst_mode = 0;  
   parameter ram_rst_mode = (rst_mode % 2);
   parameter ctl_rst_mode = (rst_mode % 2);
   parameter log_depth = (depth > 128       ? 8 :
			  (depth > 64        ? 7 :
			   (depth > 32        ? 6 :
			    (depth > 16        ? 5 :
			     (depth > 8         ? 4 :
			      (depth > 4         ? 3 :
			       (depth > 2 ? 2 : 1)))))));

   parameter log_depth_plus1 = ((depth+1) > 256       ? 9 :
				((depth+1) > 128       ? 8 :
				 ((depth+1) > 64        ? 7 :
				  ((depth+1) > 32        ? 6 :
				   ((depth+1) > 16        ? 5 :
				    ((depth+1) > 8         ? 4 :
				     ((depth+1) > 4         ? 3 :
				      ((depth+1) > 2 ? 2 : 1))))))));
   
   parameter ram_depth       = (log_depth_plus1 > log_depth) ? 
				 depth : ((depth % 2) ? (depth+1) : (depth+2));
//----------------------------------------------------------------------
// input declaration
//----------------------------------------------------------------------
   input     clk_push;
   input     clk_pop;
   input     rst_n;
   input     push_req_n;
   input     pop_req_n;
   input [width-1 : 0] data_in;
 
//----------------------------------------------------------------------
// output declaration
//----------------------------------------------------------------------
   output 	       push_empty;
   output 	       push_ae;
   output 	       push_hf;
   output 	       push_af;
   output 	       push_full;
   output 	       push_error;
   output 	       pop_empty;
   output 	       pop_ae;
   output 	       pop_hf;
   output 	       pop_af;
   output 	       pop_full;
   output 	       pop_error;
   output [width-1 : 0] data_out;
 
//----------------------------------------------------------------------
// wire declaration
//----------------------------------------------------------------------
   wire [(log_depth-1):0] rd_addr;
   wire [(log_depth-1):0] wr_addr;
   wire 		  we_n;	
   wire 		  ram_rst_n;
   wire [log_depth_plus1-1:0] push_word_count;
   wire [log_depth_plus1-1:0] pop_word_count;

//----------------------------------------------------------------------
// reg declaration
//----------------------------------------------------------------------
   CW_fifoctl_s2_sf #( depth, push_ae_lvl, push_af_lvl, pop_ae_lvl,
		       pop_af_lvl, err_mode, push_sync, pop_sync, ctl_rst_mode, 0)
   fifo_ctl (
	       .we_n			(we_n),
	       .push_empty		(push_empty),
	       .push_ae			(push_ae),
	       .push_hf			(push_hf),
	       .push_af			(push_af),
	       .push_full		(push_full),
	       .push_error		(push_error),
	       .pop_empty		(pop_empty),
	       .pop_ae			(pop_ae),
	       .pop_hf			(pop_hf),
	       .pop_af			(pop_af),
	       .pop_full		(pop_full),
	       .pop_error		(pop_error),
	       .wr_addr			(wr_addr[log_depth-1:0]),
	       .rd_addr			(rd_addr[log_depth-1:0]),
	       .push_word_count		(push_word_count[log_depth_plus1-1:0]),
	       .pop_word_count		(pop_word_count[log_depth_plus1-1:0]),
	       .clk_push		(clk_push),
	       .clk_pop			(clk_pop),
	       .rst_n			(rst_n),
	       .push_req_n		(push_req_n),
	       .pop_req_n		(pop_req_n),
	       .test			(1'b0));
   

   assign 		ram_rst_n = (rst_mode < 2)? rst_n : 1'b1;

   CW_ram_r_w_s_dff #(width, ram_depth, ram_rst_mode) fifo_ram
     (
      .data_out				(data_out[(width-1):0]),
      .data_in				(data_in[(width-1):0]),
      .rd_addr				(rd_addr[(log_depth-1):0]),
      .wr_addr				(wr_addr[(log_depth-1):0]),
      .wr_n				(we_n),
      .rst_n				(ram_rst_n),
      .cs_n				(1'b0),
      .clk				(clk_push));


//----------------------------------------------------------------------
//cadence translate_off
//synopsys translate_off       
//----------------------------------------------------------------------   

initial
begin : parameter_check
  integer err_flag;
  err_flag = 0;

  if((width < 1) || (width > 256)) begin
    $display("%m ERROR - Incorrect parameter, width=%0d (valid range: 1 to 256 )",width );
    err_flag = 1;
  end
  
  if((depth < 4) || (depth > 256)) begin
    $display("%m ERROR - Incorrect parameter, depth=%0d (valid range: 4 to 256 )",depth );
    err_flag = 1;
  end

   if((push_ae_lvl < 1) || (push_ae_lvl > depth-1)) begin
    $display("%m ERROR - Incorrect parameter, push_ae_lvl=%0d (valid range: 1 to %0d )", push_ae_lvl,depth-1);
    err_flag = 1;
   end

   if((push_af_lvl < 1) || (push_af_lvl > depth-1)) begin
    $display("%m ERROR - Incorrect parameter, push_af_lvl=%0d (valid range: 1 to %0d )", push_af_lvl,depth-1);
    err_flag = 1;
   end

    if((pop_ae_lvl < 1) || (pop_ae_lvl > depth-1)) begin
    $display("%m ERROR - Incorrect parameter, pop_ae_lvl=%0d (valid range: 1 to %0d )", pop_ae_lvl,depth-1);
    err_flag = 1;
    end

     if((pop_af_lvl < 1) || (pop_af_lvl > depth-1)) begin
    $display("%m ERROR - Incorrect parameter, pop_af_lvl=%0d (valid range: 1 to %0d )", pop_af_lvl,depth-1);
    err_flag = 1;
   end


  if((err_mode <  0) || (err_mode > 1)) begin
    $display("%m ERROR - Incorrect parameter, err_mode=%0d (valid range: 0 to 1 )", err_mode );
    err_flag = 1;
  end

  if((push_sync <  1) || (push_sync > 3)) begin
    $display("%m ERROR - Incorrect parameter, push_sync=%0d (valid range: 1 to 3 )", push_sync );
    err_flag = 1;
  end

  if((pop_sync <  1) || (pop_sync > 3)) begin
    $display("%m ERROR - Incorrect parameter, pop_sync=%0d (valid range: 1 to 3 )", pop_sync );
    err_flag = 1;
  end

  if((rst_mode < 0) || (rst_mode > 3)) begin
    $display("%m ERROR - Incorrect parameter, rst_mode=%0d (valid range: 0 to 3 )", rst_mode );
    err_flag = 1;
  end

  if(err_flag) begin
    $display("%m ERROR - Simulation stopped due to incorrect parameter values");
#1  $finish();
  end 
end

//----------------------------------------------------------------------
//synopsys translate_on    
//cadence translate_on
//----------------------------------------------------------------------      
endmodule
