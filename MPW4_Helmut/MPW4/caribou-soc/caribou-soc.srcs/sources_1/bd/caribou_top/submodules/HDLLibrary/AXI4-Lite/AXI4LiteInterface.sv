//                              -*- Mode: Verilog -*-
// Filename        : AXI4LiteInterface.sv
// Description     : AXI4-Lite interface.
// Author          : Adrian Fiergolski
// Created On      : Tue Apr 25 16:53:40 2017
//
// Copyright Adrian Fiergolski <Adrian.Fiergolski@cern.ch> 2017
//
// This source file is licensed under the CERN OHL v. 1.2.
//
// You may redistribute and modify this souce file under the terms of the
// CERN OHL v.1.2. (http://ohwr.org/cernohl). This project is distributed
// WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY,
// SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see
// the CERN OHL v.1.2 for applicable conditions.

//Interface: AXI4Lite
interface AXI4LiteInterface #(parameter AXI_DATA_WIDTH=32, AXI_ADDR_WIDTH=32) (input logic aclk, input logic aresetN);

   //Write address channel
   logic [AXI_ADDR_WIDTH-1 : 0] 		      awaddr;
   logic [2 : 0] 				      awprot;
   logic 					      awvalid;
   logic 					      awready;

   //Write data channel
   logic [AXI_DATA_WIDTH-1 : 0] 		      wdata;
   logic [(AXI_DATA_WIDTH/8)-1 : 0] 		      wstrb;
   logic 					      wvalid;
   logic 					      wready;
   
   //Write response channel
   logic [1 : 0] 				      bresp;
   logic 					      bvalid;
   logic 					      bready;

   //Read address channel
   logic [AXI_ADDR_WIDTH-1 : 0] 		      araddr;
   logic [2 : 0] 				      arprot;
   logic 					      arvalid;
   logic 					      arready;

   //Read data channel
   logic [AXI_DATA_WIDTH-1 : 0] 		      rdata;
   logic [1 : 0] 				      rresp;
   logic 					      rvalid;
   logic 					      rready;

   typedef enum 				      logic [1:0] { OKAY = 2'b00, SLVERR = 2'b10, DECERR = 2'b11} RESPONSE;

   modport slave ( input aclk, aresetN,
		   input  awaddr, awprot, awvalid, output awready,
		   input  wdata, wstrb, wvalid, output wready,
		   output bresp, bvalid, input bready,
		   input  araddr, arprot, arvalid, output arready,
		   output rdata, rresp, rvalid, input rready);

   modport master ( input aclk, aresetN,
		    output awaddr, awprot, awvalid, input awready,
		    output wdata, wstrb, wvalid, input wready,
		    input  bresp, bvalid, output bready,
		    output araddr, arprot, arvalid, input arready,
		    input  rdata, rresp, rvalid, output rready);

   
endinterface // AXI4LiteInterface
