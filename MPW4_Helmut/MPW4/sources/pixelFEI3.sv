`timescale 1ns/1ps

module        pixelFEI3(
                        ADDR_IN,
                        DIGILOGIC_IN,
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

                        BL,
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
                        VSENSBIAS
                        );

 input  logic [7:0]     TS;
 input  logic           HIT_IN;
 input  logic [7:0]     ADDR_IN;
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

 //Analog I/Os
 inout  wire            BL;
 input  wire            DEL_HI;
 input  wire            DEL_LO;
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

 logic [3:0]            TDAC;
 logic                  MASK;
 logic                  EN_INJ;
 logic                  EN_SFOUT;

 analogFrontEnd ANALOGFE(
                        .BL            (BL                 ),
                        .DIGILOGIC_IN  (DIGILOGIC_IN       ),
                        .DEL_HI        (DEL_HI             ),
                        .DEL_LO        (DEL_LO             ),
                        .INJECTION     (INJECTION          ),
                        .SFOUT         (SFOUT              ),
                        .TH            (TH                 ),
                        .VBLR          (VBLR               ),
                        .VN            (VN                 ),
                        .VNCASC        (VNCASC             ),
                        .VNFB          (VNFB               ),
                        .VNSENSBIAS    (VNSENSBIAS         ),
                        .VNSF          (VNSF               ),
                        .VPCOMP        (VPCOMP             ),
                        .VPBIAS        (VPBIAS             ),
                        .VPTRIM        (VPTRIM             ),
                        .VSENSBIAS     (VSENSBIAS          ),

                        .TDAC          (TDAC               ),
                        .MASK          (MASK               ),
                        .EN_INJ        (EN_INJ             ),
                        .HB_EN         (),
                        .EN_SFOUT      (EN_SFOUT           )
                        );

 digitalFrontEnd DIGTALFE(
                        .ADDR_IN       (ADDR_IN            ),
                        .DIGILOGIC_IN  (DIGILOGIC_IN       ),
                        .DEL_HI        (DEL_HI             ),
                        .DEL_LO        (DEL_LO             ),
                        .HB            (HB                 ),
                        .HIT_IN        (HIT_IN             ),
                        .HIT_OUT       (HIT_OUT            ),
                        .FREEZE        (FREEZE             ),
                        .ADDR_OUT_B    (ADDR_OUT_B         ),
                        .READ          (READ               ),
                        .TS            (TS                 ),
                        .TS_LE_B       (TS_LE_B            ),
                        .TS_TE_B       (TS_TE_B            ),
                        .LE            (LE                 ),
                        .TE            (TE                 ),

                        .CK1           (CK1                ),
                        .CK2           (CK2                ),
                        .LD            (LD                 ),
                        .SER_IN        (SER_IN             ),
                        .SER_OUT       (SER_OUT            ),
                        .SHIFT_EN      (SHIFT_EN           ),
                        .TDAC          (TDAC               ),
                        .MASK          (MASK               ),
                        .EN_INJ        (EN_INJ             ),
                        .HB_EN         (),
                        .EN_SFOUT      (EN_SFOUT           )

                        );
endmodule
