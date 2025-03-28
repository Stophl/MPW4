//-------------------------------------------------------------------------
// Copyright (c) 1997-2009 Cadence Design Systems, Inc.  All rights reserved.
// This work may not be copied, modified, re-published, uploaded, executed,
// or distributed in any way, in any medium, whether in whole or in part,
// without prior written permission from Cadence Design Systems, Inc.
//------------------------------------------------------------------------

//------------------------------------------------------------------------
//  Abstract   : Simulation Architecture for CW_fifoctl_s2_sf
//  RC Release : 17.11-s014_1
//------------------------------------------------------------------------

//-----------------------------------------------------------------------
// Module         : CW_fifoctl_s2_sf
// Abstract       : Syncchronous (Dual-Clock) FIFO controller with Static Flags. 
//
//    Pin Name     Width             Direction       Function
//-----------------------------------------------------------------------
//   clk_push      1                 Input           Input clock for push interface
//   clk_pop       1                 Input           Input clock for pop interface
//   rst_n         1                 Input           Reset input, active low
//   push_req_n    1                 Input           FIFO push request, active low
//   pop_req_n     1                 Input           FIFO pop request, active low
//   we_n          1                 Output          Write enable output for write port of RAM,
//                                                   active low
//   push_empty    1                 Output          FIFO empty output flag synchronous to
//                                                   clk_push, active low
//   push_ae       1                 Output          FIFO almost empty output flag synchronous to
//                                                   clk_push, active high
//   push_hf       1                 Output          FIFO half full output flag synchronous to
//                                                   clk_push,active high
//   push_af       1                 Output          FIFO almost full output flag synchronous to
//                                                   clk_push, active high
//   push_full     1                 Output          FIFO full output flag synchronous to
//                                                   clk_push, active high
//   push_error    1                 Output          FIFO push error (overrun) output flag
//                                                   synchronous to clk_push, active high
//   pop_empty     1                 Output          FIFO empty output flag synchronous to
//                                                   clk_pop, active high
//   pop_ae        1                 Output          FIFO almost empty output flag synchronous
//                                                   to clk_pop, active high
//   pop_hf        1                 Output          FIFO half full output flag synchronous to
//                                                   to clk_pop, active high
//   pop_af        1                 Output          FIFO almost full output flag synchronous
//                                                   clk_pop, active high
//   pop_full      1                 Output          FIFO full output flag synchronous to clk_pop
//                                                   active high
//   pop_error     1                 Output          FIFO pop error (underrun) output flag
//                                                   synchronous to clk_pop, active high
//   wr_addr      ceil(log2[depth])  Output          Address output to write port of RAM
//   rd_addr      ceil(log2[depth])  Output          Address output to read port of RAM
//   push_word_count ceil(log2[depth+1])  Output     Words in FIFO
//   pop_word_count  ceil(log2[depth])  Output       Words in FIFO
//   test             1                 Input        Active high, test input control
//                                                   for inserting scan test look-up latches  
//  
//-----------------------------------------------------------------------
//
//    Parameter    Values             Description
//-----------------------------------------------------------------------
//    depth        4 to 2^24          Number of words that can be stored in FIFO
//                                    Default: 8
//    push_ae_lvl  1 to depth-1       Almost empty level for push_ae output port
//                                    Default:2
//    push_af_lvl  1 to depth-1       Almost full level for the push_af output port
//                                    Default:2
//    pop_ae_lvl   1 to depth-1       Almost empty level for the pop_ae output port
//                                    Default:2
//    pop_af_lvl   1 to depth-1       Almost full level for the pop_af output port
//                                    Default:2
//    err_mode     0 or 1             Error mode 
//                                    Default: 0
//                                    0 = stays active until reset [latched], 
//                                    1 = active only as long as error condition exists
//                                        [unlatched]
//    push_sync    1 to 3             Push flag synchronization mode 
//                                    Default: 2
//                                    1 = single register synchronization from pop pointer,
//                                    2 = double register,
//                                    3 = triple register)
//    pop_sync     1 to 3             Pop flag synchronization mode 
//                                    Default: 2
//                                    1 = single register synchronization from push pointer,
//                                    2 = double register,
//                                    3 = triple register
//    rst_mode     0 or 1             Reset mode
//                                    Default: 0
//                                    0 = asynchronous reset,
//                                    1 = synchronous reset)
//    tst_mode     0 or 1             Test Mode
//                                    Default: 0
//                                    0 = test input not connected
//                                    1 = lock-up latches inserted for scan test
//----------------------------------------------------------------------- 
module CW_fifoctl_s2_sf ( 
			  clk_push, 
			  clk_pop,
			  rst_n,
			  push_req_n,
			  pop_req_n, 
			  we_n,
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
			  wr_addr, 
			  rd_addr, 
			  push_word_count, 
			  pop_word_count, 
			  test
			  );
 
//----------------------------------------------------------------------
// parameters declaration
//----------------------------------------------------------------------
   parameter depth = 8;
   parameter push_ae_lvl = 2;
   parameter push_af_lvl = 2;
   parameter pop_ae_lvl = 2;
   parameter pop_af_lvl = 2;
   parameter err_mode = 0;
   parameter push_sync = 2;
   parameter pop_sync = 2;
   parameter rst_mode = 0;
   parameter tst_mode = 0;
      
   parameter log_depth = depth > 8388608 ? 24 :
             (depth > 4194304   ? 23 :
	      (depth > 2097152   ? 22 :
	       (depth > 1048576   ? 21 :
		(depth > 524288    ? 20 :
		 (depth > 262144    ? 19 :
		  (depth > 131072    ? 18 :
		   (depth > 65536     ? 17 :
		    (depth > 32768     ? 16 :
		     (depth > 16384     ? 15 :
		      (depth > 8192      ? 14 :
		       (depth > 4096      ? 13 :
			(depth > 2048      ? 12 :
			 (depth > 1024      ? 11 :
			  (depth > 512       ? 10 :
			   (depth > 256       ? 9 :
			    (depth > 128       ? 8 :
			     (depth > 64        ? 7 :
			      (depth > 32        ? 6 :
			       (depth > 16        ? 5 :
				(depth > 8         ? 4 :
				 (depth > 4         ? 3 :
				  (depth > 2 ? 2 : 1))))))))))))))))))))));

   parameter log_depth_antilog = 1 << log_depth;
   parameter offset            = log_depth_antilog - depth;
   parameter is_pwr_of_2       = (offset == 0);
   parameter is_odd_depth      = (depth % 2);
   parameter max_addr          = is_pwr_of_2 ? (2 * depth) : (is_odd_depth ?
                                                              (depth) : (depth + 1));
   parameter log_max_addr      = max_addr > 16777216 ? 25 :
	     (max_addr > 8388608 ? 24 :
             (max_addr > 4194304   ? 23 :
	      (max_addr > 2097152   ? 22 :
	       (max_addr > 1048576   ? 21 :
		(max_addr > 524288    ? 20 :
		 (max_addr > 262144    ? 19 :
		  (max_addr > 131072    ? 18 :
		   (max_addr > 65536     ? 17 :
		    (max_addr > 32768     ? 16 :
		     (max_addr > 16384     ? 15 :
		      (max_addr > 8192      ? 14 :
		       (max_addr > 4096      ? 13 :
			(max_addr > 2048      ? 12 :
			 (max_addr > 1024      ? 11 :
			  (max_addr > 512       ? 10 :
			   (max_addr > 256       ? 9 :
			    (max_addr > 128       ? 8 :
			     (max_addr > 64        ? 7 :
			      (max_addr > 32        ? 6 :
			       (max_addr > 16        ? 5 :
				(max_addr > 8         ? 4 :
				 (max_addr > 4         ? 3 :
				  (max_addr > 2 ? 2 : 1)))))))))))))))))))))));
   
   parameter log_max_addr_antilog = 1 << log_max_addr;
   parameter max_addr_offset      = is_pwr_of_2 ? 0 : (log_max_addr_antilog - (max_addr+1));

   parameter log_depth_plus1 = (depth+1) > 16777216 ? 25 : 
	     ((depth+1) > 8388608 ? 24 :
	      ((depth+1) > 4194304   ? 23 :
	       ((depth+1) > 2097152   ? 22 :
		((depth+1) > 1048576   ? 21 :
		 ((depth+1) > 524288    ? 20 :
		  ((depth+1) > 262144    ? 19 :
		   ((depth+1) > 131072    ? 18 :
		    ((depth+1) > 65536     ? 17 :
		     ((depth+1) > 32768     ? 16 :
		      ((depth+1) > 16384     ? 15 :
		       ((depth+1) > 8192      ? 14 :
			((depth+1) > 4096      ? 13 :
			 ((depth+1) > 2048      ? 12 :
			  ((depth+1) > 1024      ? 11 :
			   ((depth+1) > 512       ? 10 :
			    ((depth+1) > 256       ? 9 :
			     ((depth+1) > 128       ? 8 :
			      ((depth+1) > 64        ? 7 :
			       ((depth+1) > 32        ? 6 :
				((depth+1) > 16        ? 5 :
				 ((depth+1) > 8         ? 4 :
				  ((depth+1) > 4         ? 3 :
				   ((depth+1) > 2 ? 2 : 1)))))))))))))))))))))));

   // parameters for gray code generation
   parameter gray_width  = log_max_addr; 
   parameter gray_depth  = max_addr;
   parameter gray_offset = is_pwr_of_2 ? 0 : ({gray_width{1'b1}} - gray_depth);
   parameter gray_test   = ({gray_width{1'b1}} - gray_offset) / 2;

//----------------------------------------------------------------------
// input declaration
//----------------------------------------------------------------------
   input                    clk_push;
   input 		    clk_pop;
   input 		    rst_n;
   input 		    push_req_n;
   input 		    pop_req_n;
   
//----------------------------------------------------------------------
// output declaration
//----------------------------------------------------------------------
   output                   we_n;
   output 		    push_empty;
   output 		    push_ae;
   output 		    push_hf;
   output 		    push_af;
   output 		    push_full;
   output 		    push_error;
   output 		    pop_empty;
   output 		    pop_ae;
   output 		    pop_hf;
   output 		    pop_af;
   output 		    pop_full;
   output 		    pop_error;
   output [log_depth-1 : 0] wr_addr;
   output [log_depth-1 : 0] rd_addr;
   output [log_depth_plus1-1 : 0] push_word_count;
   output [log_depth_plus1-1 : 0] pop_word_count;

//----------------------------------------------------------------------
// input declaration
//----------------------------------------------------------------------
   input 		    test;
    
//----------------------------------------------------------------------
// reg declaration
//----------------------------------------------------------------------   
   reg 			       push_empty_sync;
   reg 			       push_almost_empty_sync;
   reg 			       push_half_full_sync;
   reg 			       push_almost_full_sync;
   reg 			       push_full_sync;
   reg [log_max_addr-1 : 0]    push_ptr_sync;
   reg [log_max_addr-1 : 0]    push_word_count_sync;
   reg 			       push_error_sync;
   reg 			       push_empty_async;
   reg 			       push_almost_empty_async;
   reg 			       push_half_full_async;
   reg 			       push_almost_full_async;
   reg 			       push_full_async;
   reg [log_max_addr-1 : 0]    push_ptr_async;
   reg [log_max_addr-1 : 0]    push_word_count_async;
   reg 			       push_error_async;
   reg [log_max_addr-1 : 0]    push_ptr_latch;

   reg 			       pop_empty_sync;
   reg 			       pop_almost_empty_sync;
   reg 			       pop_half_full_sync;
   reg 			       pop_almost_full_sync;
   reg 			       pop_full_sync;
   reg [log_max_addr-1 : 0]    pop_ptr_sync;
   reg [log_max_addr-1 : 0]    pop_word_count_sync;
   reg 			       pop_error_sync;
   reg 			       pop_empty_async;
   reg 			       pop_almost_empty_async;
   reg 			       pop_half_full_async;
   reg 			       pop_almost_full_async;
   reg 			       pop_full_async;
   reg [log_max_addr-1 : 0]    pop_ptr_async;
   reg [log_max_addr-1 : 0]    pop_word_count_async;
   reg 			       pop_error_async;
   reg [log_max_addr-1 : 0]    pop_ptr_latch;

   reg [log_max_addr-1 : 0]    syncd_pop_ptr_sync;
   reg [log_max_addr-1 : 0]    syncd_pop_ptr_async;
   reg [log_max_addr-1 : 0]    syncd_push_ptr_sync;
   reg [log_max_addr-1 : 0]    syncd_push_ptr_async;

   reg [log_max_addr-1 : 0]    stage1_pop_sync;
   reg [log_max_addr-1 : 0]    stage2_pop_sync;
   reg [log_max_addr-1 : 0]    stage1_pop_async;
   reg [log_max_addr-1 : 0]    stage2_pop_async;
   reg [log_max_addr-1 : 0]    stage1_push_sync;
   reg [log_max_addr-1 : 0]    stage2_push_sync;
   reg [log_max_addr-1 : 0]    stage1_push_async;
   reg [log_max_addr-1 : 0]    stage2_push_async;

   reg [log_max_addr-1:0]      gray_pop_ptr_async,gray_pop_ptr_sync;
   reg [log_max_addr-1:0]      gray_push_ptr_async,gray_push_ptr_sync;
   
//----------------------------------------------------------------------
// wire declaration
//----------------------------------------------------------------------
   wire [log_max_addr-1 : 0]   pop_ptr;
   wire [log_max_addr-1 : 0]   push_ptr;
   wire [log_max_addr-1 : 0]   gray_pop_ptr;
   wire [log_max_addr-1 : 0]   gray_push_ptr;
   
   wire [log_max_addr-1 : 0]   syncd_pop_ptr;
   wire [log_max_addr-1 : 0]   syncd_push_ptr;
   
   wire [log_max_addr-1 : 0]   pop_next_ptr;
   wire [log_max_addr-1 : 0]   push_next_ptr;
  
   wire [log_max_addr-1 : 0]   pop_next_word_count;
   wire [log_max_addr-1 : 0]   push_next_word_count;
   
   wire 		       we_n;
   wire                        pop_error_occured;
   wire                        push_error_occured;

   wire [log_max_addr-1:0]     gray_pop_ptr_val;
   wire [log_max_addr-1:0]     gray_push_ptr_val;
       
   assign   pop_next_ptr         = get_next_ptr_value(pop_ptr,pop_req_n,pop_empty);
   assign   push_next_ptr        = get_next_ptr_value(push_ptr,push_req_n,push_full);
   assign   pop_next_word_count  = get_word_count(pop_next_ptr,
                                                  gray2bin(syncd_push_ptr),1'b0);
   assign   push_next_word_count = get_word_count(push_next_ptr,
                                                  gray2bin(syncd_pop_ptr),1'b1);
   assign   we_n                 = ~if_op_allowed(push_req_n, push_full);
   assign   pop_error_occured    = ~pop_req_n & pop_empty;
   assign   push_error_occured   = ~push_req_n & push_full;
   assign   rd_addr              = pop_ptr[log_depth-1 : 0];
   assign   wr_addr              = push_ptr[log_depth-1 : 0];

   assign   gray_pop_ptr         = ((tst_mode == 0) ? gray_pop_ptr_val :
				    (test ? bin2gray(pop_ptr_latch) : gray_pop_ptr_val));
   assign   gray_push_ptr        = ((tst_mode == 0) ? gray_push_ptr_val :
				    (test ? bin2gray(push_ptr_latch) : gray_push_ptr_val));

//----------------------------------------------------------------------
always @(posedge clk_pop or negedge rst_n) begin : gray_pop_ptr_async_gen
   if(~rst_n)
     gray_pop_ptr_async <= {log_max_addr{1'b0}};
   else 
     gray_pop_ptr_async <= bin2gray(pop_next_ptr);
end

always @(posedge clk_pop ) begin : gray_pop_ptr_sync_gen
   if(~rst_n)
     gray_pop_ptr_sync <= {log_max_addr{1'b0}};
   else 
     gray_pop_ptr_sync <= bin2gray(pop_next_ptr);
end
   
   assign gray_pop_ptr_val = (rst_mode) ? gray_pop_ptr_sync : gray_pop_ptr_async;
   
//----------------------------------------------------------------------

   always @(posedge clk_push or negedge rst_n) begin : gray_push_ptr_async_gen
   if(~rst_n)
     gray_push_ptr_async <= {log_max_addr{1'b0}};
   else 
     gray_push_ptr_async <= bin2gray(push_next_ptr);
   end


   always @(posedge clk_push) begin : gray_push_ptr_sync_gen
   if(~rst_n)
     gray_push_ptr_sync <= {log_max_addr{1'b0}};
   else 
     gray_push_ptr_sync <= bin2gray(push_next_ptr);
   end

assign gray_push_ptr_val = (rst_mode) ? gray_push_ptr_sync : gray_push_ptr_async;
   
//----------------------------------------------------------------------
// pop ptr generation 
//----------------------------------------------------------------------
assign pop_ptr = rst_mode ? pop_ptr_sync : pop_ptr_async;

always @(posedge clk_pop or negedge rst_n) begin : pop_ptr_async_gen
   if(~rst_n)
     pop_ptr_async <= {log_max_addr{1'b0}};
   else 
     pop_ptr_async <= pop_next_ptr;
end

always @(posedge clk_pop) begin : pop_ptr_sync_gen
   if(~rst_n)
     pop_ptr_sync <= {log_max_addr{1'b0}};
   else 
     pop_ptr_sync <= pop_next_ptr;
end

//----------------------------------------------------------------------
// push ptr generation 
//----------------------------------------------------------------------
assign push_ptr = rst_mode ? push_ptr_sync : push_ptr_async;
   
always @(posedge clk_push or negedge rst_n) begin : push_ptr_async_gen
   if(~rst_n)
     push_ptr_async <= {log_max_addr{1'b0}};
   else 
     push_ptr_async <= push_next_ptr;
end

always @(posedge clk_push) begin : push_ptr_sync_gen
   if(~rst_n)
     push_ptr_sync <= {log_max_addr{1'b0}};
   else 
     push_ptr_sync <= push_next_ptr;
end

//----------------------------------------------------------------------
// get_next_ptr_value
//----------------------------------------------------------------------
function [log_max_addr-1 : 0] get_next_ptr_value;
input [log_max_addr-1 : 0] ptr;
input op_req_n;
input flag;
reg dummy;      
begin
   get_next_ptr_value = 0;

   if(if_op_allowed(op_req_n,flag))
     begin
	if(ptr <= max_addr - 1)
        {dummy,get_next_ptr_value} = ptr + 1;
     end 
   else
     get_next_ptr_value = ptr;
end
endfunction

//----------------------------------------------------------------------
// if_op_allowed
//----------------------------------------------------------------------   
function if_op_allowed;
input op_req_n;
input flag;
begin
  if_op_allowed = ~op_req_n & ~flag;
end
endfunction

//----------------------------------------------------------------------
// Gray code generation logic 
//----------------------------------------------------------------------  
function [gray_width-1 : 0] bin2gray;
input [gray_width-1 : 0] binary;
reg   [gray_width-1 : 0] binary_in;
reg   [gray_width-1 : 0] gray;
reg dummy;
begin
   {dummy,binary_in} = (binary > gray_test) ? (binary + gray_offset[gray_width-1 : 0]) : binary;
   gray      = binary_in;
   binary_in = binary_in >> 1;
   gray      = gray ^ binary_in;
   bin2gray  = gray;
end
endfunction

//----------------------------------------------------------------------
// gray2bin
//----------------------------------------------------------------------
function [gray_width-1 : 0] gray2bin;
input [gray_width-1 : 0] gray;
reg   [gray_width-1 : 0] rt_shift_gray;
reg   [gray_width-1 : 0] gray_in;
integer i;
reg dummy;
begin
  gray2bin = gray;
  gray_in  = gray;
      
  for(i = 0; i < gray_width; i = i +1)
  begin
    gray_in  = (gray_in >> 1);
    gray2bin = gray2bin ^ gray_in;
  end 
  {dummy,gray2bin} = gray[gray_width-1] ? (gray2bin - gray_offset[gray_width-1 : 0]) : gray2bin;

end
endfunction

//----------------------------------------------------------------------
// pop word count calculation 
//----------------------------------------------------------------------
assign pop_word_count = rst_mode ? pop_word_count_sync : pop_word_count_async;
  
always @(posedge clk_pop or negedge rst_n) begin : pop_wrd_count_async_gen
  if(~rst_n)
    pop_word_count_async <= {log_max_addr{1'b0}};
  else
    pop_word_count_async <= pop_next_word_count;
end

always @(posedge clk_pop) begin : pop_wrd_count_sync_gen
  if(~rst_n)
    pop_word_count_sync <= {log_max_addr{1'b0}};
  else
    pop_word_count_sync <= pop_next_word_count;
end

//----------------------------------------------------------------------
// push word count calculation 
//----------------------------------------------------------------------
assign push_word_count = rst_mode ? push_word_count_sync : push_word_count_async;
  
always @(posedge clk_push or negedge rst_n) begin : push_wrd_count_async_gen
  if(~rst_n)
    push_word_count_async <= {log_max_addr{1'b0}};
  else
    push_word_count_async <= push_next_word_count;
end

always @(posedge clk_push) begin : push_wrd_count_sync_gen
  if(~rst_n)
    push_word_count_sync <= {log_max_addr{1'b0}};
  else
    push_word_count_sync <= push_next_word_count;
end

//----------------------------------------------------------------------
// get_word_count
//----------------------------------------------------------------------
function [log_max_addr-1 : 0] get_word_count;
input [log_max_addr-1 : 0] this_ptr;
input [log_max_addr-1 : 0] other_ptr;
input                      push_domain;
reg [log_max_addr-1 : 0]   rd_addr;
reg [log_max_addr-1 : 0]   wr_addr;
reg [log_max_addr   : 0]   wr_minus_rd;
reg dummy1;
reg dummy2;
begin
  rd_addr        = push_domain ? other_ptr : this_ptr;
  wr_addr        = push_domain ? this_ptr  : other_ptr;
  
  if(rd_addr <= wr_addr)
    {dummy1,get_word_count} = wr_addr - rd_addr;
  else
    {dummy1,dummy2,get_word_count} = wr_addr + (max_addr - rd_addr) + (!is_pwr_of_2);
end
endfunction

//----------------------------------------------------------------------
// get_almost_full
//----------------------------------------------------------------------
function get_almost_full;
input [log_max_addr-1 : 0]   word_count;
input [log_max_addr-1 : 0]   af_lvl;
begin
   get_almost_full = (word_count >= (depth - af_lvl)); 
end
endfunction

//----------------------------------------------------------------------
// get_half_full
//----------------------------------------------------------------------
function get_half_full;
input [log_max_addr-1 : 0] word_count;
begin
   get_half_full = (word_count >= ((depth+1)/2));
end
endfunction

//----------------------------------------------------------------------
// get_almost_empty
//----------------------------------------------------------------------
function get_almost_empty;
input [log_max_addr-1 : 0] word_count;
input [log_max_addr-1 : 0] ae_lvl;
begin
   get_almost_empty = (word_count <=  ae_lvl);
end
endfunction
  
//----------------------------------------------------------------------
// pop_af generation
//----------------------------------------------------------------------
assign pop_af = rst_mode ? pop_almost_full_sync : pop_almost_full_async;
  
always @(posedge clk_pop or negedge rst_n) begin : pop_almost_full_async_gen
  if(~rst_n)
    pop_almost_full_async <= 1'b0;
  else
    pop_almost_full_async <= get_almost_full(pop_next_word_count,pop_af_lvl);
end

always @(posedge clk_pop) begin : pop_almost_full_sync_gen
  if(~rst_n)
    pop_almost_full_sync <= 1'b0;
  else
    pop_almost_full_sync <= get_almost_full(pop_next_word_count,pop_af_lvl);
end

//----------------------------------------------------------------------
// push_af generation
//----------------------------------------------------------------------
assign push_af = rst_mode ? push_almost_full_sync : push_almost_full_async;
  
always @(posedge clk_push or negedge rst_n) begin : push_almost_full_async_gen
  if(~rst_n)
    push_almost_full_async <= 1'b0;
  else
    push_almost_full_async <= get_almost_full(push_next_word_count,push_af_lvl);
end

always @(posedge clk_push) begin : push_almost_full_sync_gen
  if(~rst_n)
    push_almost_full_sync <= 1'b0;
  else
    push_almost_full_sync <= get_almost_full(push_next_word_count,push_af_lvl);
end

//----------------------------------------------------------------------
// pop_hf generation
//----------------------------------------------------------------------
assign pop_hf = rst_mode ? pop_half_full_sync : pop_half_full_async;

always @(posedge clk_pop or negedge rst_n) begin : pop_half_full_async_gen
  if(~rst_n)
    pop_half_full_async <= 1'b0;
  else
    pop_half_full_async <= get_half_full(pop_next_word_count);
end

always @(posedge clk_pop) begin : pop_half_full_sync_gen
  if(~rst_n)
    pop_half_full_sync <= 1'b0;
  else
    pop_half_full_sync <= get_half_full(pop_next_word_count);
end

//----------------------------------------------------------------------
// push_hf generation
//----------------------------------------------------------------------
assign push_hf = rst_mode ? push_half_full_sync : push_half_full_async;

always @(posedge clk_push or negedge rst_n) begin : push_half_full_async_gen
  if(~rst_n)
    push_half_full_async <= 1'b0;
  else
    push_half_full_async <= get_half_full(push_next_word_count);
end

always @(posedge clk_push) begin : push_half_full_sync_gen
  if(~rst_n)
    push_half_full_sync <= 1'b0;
  else
    push_half_full_sync <= get_half_full(push_next_word_count);
end

//----------------------------------------------------------------------
// pop_ae generation
//----------------------------------------------------------------------
assign pop_ae = rst_mode ? pop_almost_empty_sync : pop_almost_empty_async;

always @(posedge clk_pop or negedge rst_n) begin : pop_almost_empty_async_gen
  if(~rst_n)
    pop_almost_empty_async <= 1'b1;
  else
    pop_almost_empty_async <= get_almost_empty(pop_next_word_count,pop_ae_lvl);
end

always @(posedge clk_pop) begin : pop_almost_empty_sync_gen
  if(~rst_n)
    pop_almost_empty_sync <= 1'b1;
  else
    pop_almost_empty_sync <= get_almost_empty(pop_next_word_count,pop_ae_lvl);
end

//----------------------------------------------------------------------
// push_ae generation
//----------------------------------------------------------------------
assign push_ae = rst_mode ? push_almost_empty_sync : push_almost_empty_async;

always @(posedge clk_push or negedge rst_n) begin : push_almost_empty_async_gen
  if(~rst_n)
    push_almost_empty_async <= 1'b1;
  else
    push_almost_empty_async <= get_almost_empty(push_next_word_count,push_ae_lvl);
end

always @(posedge clk_push) begin : push_almost_empty_sync_gen
  if(~rst_n)
    push_almost_empty_sync <= 1'b1;
  else
    push_almost_empty_sync <= get_almost_empty(push_next_word_count,push_ae_lvl);
end   
   
//----------------------------------------------------------------------
// pop full generation
//----------------------------------------------------------------------
assign pop_full = rst_mode ? pop_full_sync : pop_full_async;

always @(posedge clk_pop or negedge rst_n) begin : pop_full_async_gen
  if(~rst_n)
    pop_full_async <= 1'b0;
  else
    pop_full_async <= (pop_next_word_count == depth);
end

always @(posedge clk_pop) begin : pop_full_sync_gen
  if(~rst_n)
    pop_full_sync <= 1'b0;
  else
    pop_full_sync <= (pop_next_word_count == depth);
end

//----------------------------------------------------------------------
// push full generation
//----------------------------------------------------------------------
assign push_full = rst_mode ? push_full_sync : push_full_async;

always @(posedge clk_push or negedge rst_n) begin : push_full_async_gen
  if(~rst_n)
    push_full_async <= 1'b0;
  else
    push_full_async <= (push_next_word_count == depth);
end

always @(posedge clk_push) begin : push_full_sync_gen
  if(~rst_n)
    push_full_sync <= 1'b0;
  else
    push_full_sync <= (push_next_word_count == depth);
end

//----------------------------------------------------------------------
// pop empty generation
//----------------------------------------------------------------------
assign pop_empty = rst_mode ? pop_empty_sync : pop_empty_async;

always @(posedge clk_pop or negedge rst_n) begin : pop_empty_async_gen
  if(~rst_n)
    pop_empty_async <= 1'b1;
  else
    pop_empty_async <= (pop_next_word_count == 0);
end

always @(posedge clk_pop) begin : pop_empty_sync_gen
  if(~rst_n)
    pop_empty_sync <= 1'b1;
  else
    pop_empty_sync <= (pop_next_word_count == 0);
end

//----------------------------------------------------------------------
// push empty generation
//----------------------------------------------------------------------
assign push_empty = rst_mode ? push_empty_sync : push_empty_async;

always @(posedge clk_push or negedge rst_n) begin : push_empty_async_gen
  if(~rst_n)
    push_empty_async <= 1'b1;
  else
    push_empty_async <= (push_next_word_count == 0);
end

always @(posedge clk_push) begin : push_empty_sync_gen
  if(~rst_n)
    push_empty_sync <= 1'b1;
  else
    push_empty_sync <= (push_next_word_count == 0);
end

//----------------------------------------------------------------------
// pop error generation
//----------------------------------------------------------------------
assign pop_error = rst_mode ? pop_error_sync : pop_error_async;

always @(posedge clk_pop or negedge rst_n) begin : pop_error_async_gen
  if(~rst_n)
    pop_error_async <= 1'b0;
  else if(err_mode == 1)
    pop_error_async <= pop_error_occured;
  else if(pop_error_occured & (err_mode == 0))
    pop_error_async <= 1'b1;
end   

always @(posedge clk_pop) begin : pop_error_sync_gen
  if(~rst_n)
    pop_error_sync <= 1'b0;
  else if(err_mode == 1)
    pop_error_sync <= pop_error_occured;
  else if(pop_error_occured & (err_mode == 0))
    pop_error_sync <= 1'b1;
end   

//----------------------------------------------------------------------
// push error generation
//----------------------------------------------------------------------
assign push_error = rst_mode ? push_error_sync : push_error_async;

always @(posedge clk_push or negedge rst_n) begin : push_error_async_gen
  if(~rst_n)
    push_error_async <= 1'b0;
  else if(err_mode == 1)
    push_error_async <= push_error_occured;
  else if(push_error_occured & (err_mode == 0))
    push_error_async <= 1'b1;
end   

always @(posedge clk_push) begin : push_error_sync_gen
  if(~rst_n)
    push_error_sync <= 1'b0;
  else if(err_mode == 1)
    push_error_sync <= push_error_occured;
  else if(push_error_occured & (err_mode == 0))
    push_error_sync <= 1'b1;
end   

//----------------------------------------------------------------------
// pop ptr_latch
//----------------------------------------------------------------------
always @(clk_pop or pop_ptr) begin : pop_ptr_latch_gen
  if(~clk_pop)
    pop_ptr_latch <= pop_ptr;
end

//----------------------------------------------------------------------
// push ptr_latch
//----------------------------------------------------------------------
always @(clk_push or push_ptr) begin : push_ptr_latch_gen
  if(~clk_push)
    push_ptr_latch <= push_ptr;
end
   
//----------------------------------------------------------------------
// synchronisation of read pointers
//----------------------------------------------------------------------
assign syncd_pop_ptr = rst_mode ? syncd_pop_ptr_sync : syncd_pop_ptr_async;

always @(posedge clk_push) begin : pop_sync_reset
   if (~rst_n)
   {syncd_pop_ptr_sync, stage1_pop_sync, stage2_pop_sync} <=
{{log_max_addr{1'b0}},{log_max_addr{1'b0}},{log_max_addr{1'b0}}};
   else
     begin
	if (push_sync == 1)
	  syncd_pop_ptr_sync <= gray_pop_ptr;
	if (push_sync == 2)
	  {syncd_pop_ptr_sync, stage1_pop_sync} <= {stage1_pop_sync, gray_pop_ptr};
	if (push_sync == 3)
	  {syncd_pop_ptr_sync, stage2_pop_sync, stage1_pop_sync} <=
        {stage2_pop_sync, stage1_pop_sync, gray_pop_ptr};
     end 
end 

always @(posedge clk_push or negedge rst_n) begin : pop_async_reset
  if (~rst_n)
     {syncd_pop_ptr_async, stage1_pop_async, stage2_pop_async} <=
{{log_max_addr{1'b0}},{log_max_addr{1'b0}},{log_max_addr{1'b0}}};
  else
  begin
    if (push_sync == 1)
      syncd_pop_ptr_async <= gray_pop_ptr;
    if (push_sync == 2)
      {syncd_pop_ptr_async, stage1_pop_async} <= {stage1_pop_async, gray_pop_ptr};
    if (push_sync == 3)
      {syncd_pop_ptr_async, stage2_pop_async, stage1_pop_async} <=
    {stage2_pop_async, stage1_pop_async, gray_pop_ptr};
  end 
end

//----------------------------------------------------------------------
// synchronisation of write pointers
//----------------------------------------------------------------------
assign syncd_push_ptr = rst_mode ? syncd_push_ptr_sync : syncd_push_ptr_async;

always @(posedge clk_pop) begin : push_sync_reset
   if (~rst_n)
     {syncd_push_ptr_sync, stage1_push_sync, stage2_push_sync} <=
{{log_max_addr{1'b0}},{log_max_addr{1'b0}},{log_max_addr{1'b0}}};
   else
     begin
	if (pop_sync == 1)
	  syncd_push_ptr_sync <= gray_push_ptr;
	if (pop_sync == 2)
	  {syncd_push_ptr_sync, stage1_push_sync} <= {stage1_push_sync, gray_push_ptr};
	if (pop_sync == 3)
	  {syncd_push_ptr_sync, stage2_push_sync, stage1_push_sync} <=
        {stage2_push_sync, stage1_push_sync, gray_push_ptr};
     end
end 

always @(posedge clk_pop or negedge rst_n) begin : push_async_reset
  if (~rst_n)
    {syncd_push_ptr_async, stage1_push_async, stage2_push_async} <=
{{log_max_addr{1'b0}},{log_max_addr{1'b0}},{log_max_addr{1'b0}}};
  else
  begin
    if (pop_sync == 1)
      syncd_push_ptr_async <= gray_push_ptr;
    if (pop_sync == 2)
      {syncd_push_ptr_async, stage1_push_async} <= {stage1_push_async, gray_push_ptr};
    if (pop_sync == 3)
      {syncd_push_ptr_async, stage2_push_async, stage1_push_async} <=
		   {stage2_push_async, stage1_push_async, gray_push_ptr};
  end
end

//----------------------------------------------------------------------
// cadence translate_off
// synopsys translate_off
//----------------------------------------------------------------------
integer gray_width1;
integer gray_offset1;
integer gray_depth1;
integer gray_test1;
integer POP_SYNC;
integer PUSH_SYNC;

initial
begin
  gray_width1  = gray_width;
  gray_offset1 = gray_offset;
  gray_depth1  = gray_depth;
  gray_test1   = gray_test;
  POP_SYNC  = pop_sync;
  PUSH_SYNC = push_sync;
end

initial
begin : parameter_check
  integer err_flag;
  err_flag = 0;

   if((depth < 4) || (depth > 16777216)) begin
    $display("%m ERROR - Incorrect parameter, depth=%0d (valid range: 4 to 16777216 )",depth );
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

   if((rst_mode < 0) || (rst_mode > 1)) begin
    $display("%m ERROR - Incorrect parameter, rst_mode=%0d (valid range: 0 to 1 )", rst_mode );
    err_flag = 1;
  end

   if((tst_mode < 0) || (tst_mode > 1)) begin
    $display("%m ERROR - Incorrect parameter, tst_mode=%0d (valid range: 0 to 1 )", tst_mode );
    err_flag = 1;
  end
  
   if(err_flag) begin
    $display("%m ERROR - Simulation stopped due to incorrect parameter values");
#1  $finish();
  end 
end

//----------------------------------------------------------------------
// cadence translate_on
// synopsys translate_on
//----------------------------------------------------------------------    

endmodule
