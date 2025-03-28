`timescale 1ns/1ps

module   digitalFrontEnd(
                        ADDR_IN,
                        DIGILOGIC_IN,
                        DEL_HI,
                        DEL_LO,
                        HB,
                        HIT_IN,
                        HIT_OUT,
                        FREEZE,
                        ADDR_OUT_B,
                        READ,
                        TS,
                        TS_LE_B,
                        TS_TE_B,
                        LE,
                        TE,

                        CK1,
                        CK2,
                        LD,
                        SER_IN,
                        SHIFT_EN,
                        SER_OUT,
                        TDAC,
                        MASK,
                        EN_INJ,
                        HB_EN,
                        EN_SFOUT

                        );

 input  logic           DEL_HI;
 input  logic [7:0]     TS;
 input  logic           HIT_IN;
 input  logic [7:0]     ADDR_IN;
 input  logic           DEL_LO;
 input  logic           READ;
 input  logic           DIGILOGIC_IN;
 inout  wire  [7:0]     TS_LE_B;
 inout  wire  [7:0]     TS_TE_B;
 output logic           HIT_OUT;
 inout  wire            HB;
 inout  wire  [7:0]     ADDR_OUT_B;
 input  logic           FREEZE;
 output logic           LE;                      //Only for monitoring.
 output logic           TE;                      //Only for monitoring.


 input  logic           CK1;
 input  logic           CK2;
 input  logic [7:0]     LD;
 input  logic           SER_IN;
 input  logic           SHIFT_EN;
 output logic           SER_OUT;
 output logic [3:0]     TDAC;
 output logic           MASK;
 output logic           EN_INJ;
 output logic           HB_EN;
 output logic           EN_SFOUT;

 logic                  WRINTLEB;
 logic                  WRINTTEB;
 logic                  QSR1  = 1'b0;
 logic                  QNSR1 = 1'b1;
 logic                  QSR2  = 1'b0;
 logic                  QNSR2 = 1'b1;
 logic                  DIGILOGIC_OUT     = 1'b0;
 logic                  DIGILOGIC_OUTB    = 1'b1;
 logic                  Slow  = 1'b0;
 logic                  RDINTB;
 logic [7:0]            TSTERAM;
 logic [7:0]            TSLERAM;
 logic                  READEN= 1'b0;

 //*********************************************************************************//
 //*                            PixelDig_Logic                                     *//
 //*********************************************************************************//


 //----negated signal for comparison to Virtuoso-------//
assign READB = !READ;

 //Hit Bus (HB) logic
 assign HB = (HB_EN ? DIGILOGIC_IN : 1'bz);

 //------------Edge deTEctors------------//
 always@(*)
  begin
   #5 Slow = (DEL_LO ? DIGILOGIC_IN : 1'bz);
  end
 assign LE = ~(  DIGILOGIC_IN  & (~Slow));
 assign TE = ~((~DIGILOGIC_IN) &   Slow );

 assign RDINTB = ~(READ & READEN);

 //------------SRLatch1TE----------------//
 always@(*) QSR1  = ~(QNSR1 & TE    );
 always@(*) QNSR1 = ~(QSR1  & RDINTB);
 //------------SRLatch1LE----------------//
 always@(*) QSR2  = ~(QNSR2 & LE    );
 always@(*) QNSR2 = ~(QSR2  & RDINTB);
 //------------SRLatch2------------------//
 always@(*) DIGILOGIC_OUT     = ~(DIGILOGIC_OUTB & (~(QSR1 & FREEZE)));
 always@(*) DIGILOGIC_OUTB    = ~(DIGILOGIC_OUT & RDINTB);

 assign WRINTLEB = ~(QNSR2 & RDINTB);
 assign WRINTTEB = ~(QNSR1 & RDINTB);

 //*********************************************************************************//
 //*                            AddrROM                                            *//
 //*********************************************************************************//

 assign ADDR_OUT_B = (RDINTB ? 8'hz : ~ADDR_IN);

 //*********************************************************************************//
 //*                            TSRAM                                              *//
 //*********************************************************************************//

 assign TS_LE_B = (RDINTB ? 8'hz : TSLERAM);

 always @(TS or WRINTLEB)
  if(!WRINTLEB) TSLERAM <= TS;

 assign TS_TE_B = (RDINTB ? 8'hz : TSTERAM);

 always @(TS or WRINTTEB)
  if(!WRINTTEB) TSTERAM <= TS;

 //*********************************************************************************//
 //*                            PrioOR_Logic                                       *//
 //*********************************************************************************//

 assign HIT_OUT = HIT_IN | DIGILOGIC_OUT;
 always @(READ or DIGILOGIC_OUT or HIT_IN)
  if (READB) READEN <= (DIGILOGIC_OUT & (~HIT_IN));

 //*********************************************************************************//
 //*                            SRAM LOGIC                                         *//
 //*********************************************************************************//

 logic                  FFIN;
 logic                  FFINT;
 logic                  WRITERD;
 logic                  SRAMLINE;
 logic [7:0]            LDRAM;

 assign FFIN = SHIFT_EN ? SER_IN : WRITERD;

 always @(*)
   //if (!CK1) FFINT = FFIN;
   if (CK1) FFINT = FFIN;

 always @(*)
   if (CK2) SER_OUT = FFINT;

 assign WRITERD = SHIFT_EN ? SER_OUT : SRAMLINE;

 // assign SRAMLINE = ( LD[0] ? TDAC[0]  :
 //                     LD[1] ? TDAC[1]  :
 //                     LD[2] ? TDAC[2]  :
 //                     LD[3] ? TDAC[3]  :
 //                     LD[4] ? MASK     :
 //                     LD[5] ? EN_INJ   :
 //                     LD[6] ? HB_EN    :
 //                     LD[7] ? EN_SFOUT : 1'bz);
 assign SRAMLINE = ( LD[0] ? LDRAM[0]  :
                     LD[1] ? LDRAM[1]  :
                     LD[2] ? LDRAM[2]  :
                     LD[3] ? LDRAM[3]  :
                     LD[4] ? LDRAM[4]  :
                     LD[5] ? LDRAM[5]  :
                     LD[6] ? LDRAM[6]  :
                     LD[7] ? LDRAM[7]  : 1'bz);


 always @(*)
  if (LD[0]) TDAC[0] = WRITERD;

 always @(*)
  if (LD[1]) TDAC[1] = WRITERD;

 always @(*)
  if (LD[2]) TDAC[2] = WRITERD;

 always @(*)
  if (LD[3]) TDAC[3] = WRITERD;

 always @(*)
  if (LD[4]) MASK = WRITERD;

 always @(*)
  if (LD[5]) EN_INJ = WRITERD;

 always @(*)
  if (LD[6]) HB_EN = WRITERD;

 always @(*)
  if (LD[7]) EN_SFOUT = WRITERD;

always_comb begin
    if (SHIFT_EN && LD[0]) LDRAM[0] <= WRITERD; // This actually stores the values if in WRITE cycle (SHIFT_EN==0)
    if (SHIFT_EN && LD[1]) LDRAM[1] <= WRITERD;
    if (SHIFT_EN && LD[2]) LDRAM[2] <= WRITERD;
    if (SHIFT_EN && LD[3]) LDRAM[3] <= WRITERD;
    if (SHIFT_EN && LD[4]) LDRAM[4] <= WRITERD;
    if (SHIFT_EN && LD[5]) LDRAM[5] <= WRITERD;
    if (SHIFT_EN && LD[6]) LDRAM[6] <= WRITERD;
    if (SHIFT_EN && LD[7]) LDRAM[7] <= WRITERD;
end


endmodule
