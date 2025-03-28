`timescale 1ns/1ps
`include "../src/definitions.h"

module analogFrontEnd(
                        BL,
                        DIGILOGIC_IN,
                        DEL_HI,
                        DEL_LO,
                        INJECTION,
                        SFOUT,
                        TH,
                        VBLR,
                        VN,
                        VNCASC,
                        VNFB,
                        VNSENSBIAS,
                        VNSF,
                        VPCOMP,
                        VPBIAS,
                        VPTRIM,
                        VSENSBIAS,

                        TDAC,
                        MASK,
                        EN_INJ,
                        HB_EN,
                        EN_SFOUT
                        );

 output logic           BL;
 input  logic           DIGILOGIC_IN;
 input  logic           DEL_HI;
 input  logic           DEL_LO;
 inout  wire            INJECTION;
 inout  wire            SFOUT;
 inout  wire            TH;
 inout  wire            VBLR;
 inout  wire            VN;
 inout  wire            VNCASC;
 inout  wire            VNFB;
 inout  wire            VNSENSBIAS;
 inout  wire            VNSF;
 inout  wire            VPCOMP;
 inout  wire            VPBIAS;
 inout  wire            VPTRIM;
 inout  wire            VSENSBIAS;

 input  logic [3:0]     TDAC;
 input  logic           MASK;
 input  logic           EN_INJ;
 input  logic           HB_EN;
 input  logic           EN_SFOUT;

 logic                  hit;           //Emulates the detection of a hit. Active high.

 //Simple model. It must be improved and take into account the possibility of masking the pixel and
 //injecting an external pulse.
 assign DIGILOGIC_IN = hit;
 assign SFOUT = 0;

 //Simple pulse generation task. TOA and TOT are passed as parameters. Hit signal is set to high
 //after toa ns. It is kept high tot ns and then is set to low again.
 task generate_pulse;
  input real toa;
  input real tot;

  begin
   #toa hit = 1'b1;
   #tot hit = 1'b0;
  end
 endtask: generate_pulse

 initial
  begin
   hit = 1'b0;
  end
endmodule
