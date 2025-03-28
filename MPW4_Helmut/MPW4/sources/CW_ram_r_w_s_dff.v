//-------------------------------------------------------------------------
// Copyright (c) 1997-2009 Cadence Design Systems, Inc.  All rights reserved.
// This work may not be copied, modified, re-published, uploaded, executed,
// or distributed in any way, in any medium, whether in whole or in part,
// without prior written permission from Cadence Design Systems, Inc.
//------------------------------------------------------------------------

//------------------------------------------------------------------------
//  Abstract   : Simulation Architecture for CW_ram_r_w_s_dff
//  RC Release : 17.11-s014_1
//------------------------------------------------------------------------

////////////////////////////////////////////////////////////////////////////
//
// Chipware -  Cadence Design Systems Ireland.
//
// Name:        CW_ram_r_w_s_dff.v.
//
// Description: Synchronous Write Port, Asynchronous Read Port RAM
//              Flip-Flop Based.
//
//
// Module:      CW_ram_r_w_s_dff
// Description: This is the top module of CW_ram_r_w_s_dff
//
////////////////////////////////////////////////////////////////////////////


module CW_ram_r_w_s_dff (
                        clk, 
                        rst_n, 
                        cs_n, 
                        wr_n, 
                        rd_addr, 
                        wr_addr, 
                        data_in, 
                        data_out
                        );

parameter data_width=16, depth=8, rst_mode=0;


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



input rst_n;
input clk;
input wr_n;
input cs_n;
input [(data_width - 1):0] data_in;
input [(log_depth - 1):0] rd_addr;
input [(log_depth - 1):0] wr_addr;
output [(data_width - 1):0] data_out;

reg [(data_width - 1):0] mem[0:(depth - 1)];
wire [(data_width - 1):0] data_out;

integer i;

//Parameter checking
//cadence translate_off
initial begin

 if (data_width < 1 || data_width > 256) $display("ERROR - Bad parameter, data_width=%0d, which not in the legal range of 1 to 256.", data_width);
 if (depth < 2 || depth > 256) $display("ERROR - Bad parameter, depth=%0d, which not in the legal range of 2 to 256.", depth);
 if (rst_mode < 0 || rst_mode > 1) $display("ERROR - Bad parameter, rst_mode=%0d, which not in the legal range of 0 to 1.", rst_mode);

end
//cadence translate_on


assign data_out[(data_width -1):0] = (rd_addr > depth - 1) ? {data_width{1'bx}} : mem[rd_addr];

always @(posedge clk) // Synchronous reset
   begin
     if(rst_mode == 1)
        begin 
         if(rst_n == 1'b0)
           // Reset all memory to zero
           for(i = 0 ; i < depth ; i = i+1)
               begin
                  mem[i] <= 0;
               end 
         else
//Note: In Sim model x's are written to Ram for an invalid input to wr_n (ie. not = 0 or 1)
           if(wr_n == 1'b0 && cs_n == 1'b0)
               mem[wr_addr] <= data_in[(data_width -1):0];
           else if(wr_n == 1'b0 || wr_n == 1'b1)
               mem[wr_addr] <= mem[wr_addr];
           else
               mem[wr_addr] <= {data_width{1'bx}};
        end
    else
        begin
        end
end


always @(posedge clk or negedge rst_n)  // Asynchronous reset 
begin
      if(rst_mode == 0)
        begin
          if(rst_n == 1'b0)
            // Reset all memory to zero
            for(i = 0 ; i < depth ; i = i+1)
               begin
                  mem[i] <= 0;
               end 
          else
//Note: In Sim model x's are written to Ram for an invalid input to wr_n (ie. not = 0 or 1)
           if(wr_n == 1'b0 && cs_n == 1'b0)
               mem[wr_addr] <= data_in[(data_width -1):0];
           else if(wr_n == 1'b0 || wr_n == 1'b1)
               mem[wr_addr] <= mem[wr_addr];
           else
               mem[wr_addr] <= {data_width{1'bx}};
        end
    else
        begin
        end

end


//Testing for invalid inputs.
//cadence translate_off
always @(wr_n)
begin
  if(wr_n == 0 || wr_n == 1)
   begin
   end
  else
   $display("Invalid input wr_n = %b", wr_n);
end

always @(rd_addr)
begin
  if(^rd_addr == 0 || ^rd_addr == 1)
    begin
    end
  else
    $display("Invalid input rd_addr = %h", rd_addr);
  if(rd_addr > depth - 1)
    $display("Read address not within Ram Range = %h", rd_addr);
end

always @(wr_addr)
begin
  if(^wr_addr == 0 || ^wr_addr == 1)
    begin
    end
  else
    $display("Invalid input wr_addr = %h", wr_addr);
  if(wr_addr > depth - 1)
    $display("Write address not within Ram Range = %h", wr_addr);
end

always @(rst_n )
begin
if(rst_n == 0 || rst_n == 1)
   begin
   end
else
$display("Invalid input rst_n = %b", rst_n);
end
always @(cs_n )
begin
if(cs_n == 0 || cs_n == 1)
   begin
   end
else
$display("Invalid input cs_n = %b", cs_n);
end

//cadence translate_on

endmodule   



