//*********************************************//
//*                                           *//
//* Hierachy paths.                           *//
//*                                           *//
//*********************************************//
`define TOP                  dut
`define TOP_DIGITAL          dut.top_block.top_digital_block

//*********************************************//
//*                                           *//
//* Half 40MHz LHC clock period (ns)          *//
//*                                           *//
//*********************************************//
`define HALF40MCLK          12.5

//*********************************************//
//*                                           *//
//* Half 640MHz clock period (ns)             *//
//*                                           *//
//*********************************************//
`define HALF640MCLK          0.78125

//*********************************************//
//*                                           *//
//* Definitions of the pixel configuration    *//
//* bits.                                     *//
//*                                           *//
//*********************************************//
`define TDAC0                3'd0
`define TDAC1                3'd1
`define TDAC2                3'd2
`define TDAC3                3'd3
`define MASK                 3'd4
`define ENINJ                3'd5
`define ENHB                 3'd6
`define ENSFOUT              3'd7

//*********************************************//
//*                                           *//
//* Pixel matrix size                         *//
//*                                           *//
//*********************************************//
`define NPIX                 7'd128
`define DCOL                 7'd2

//*********************************************//
//*                                           *//
//* Wishbone memory map (base addresses)      *//
//*                                           *//
//*********************************************//
//`define WB_BASE_ADR_COL0     16'h10
//`define WB_BASE_ADR_COL1     16'h20
//`define WB_BASE_ADR_COL2     16'h30
//`define WB_BASE_ADR_COL3     16'h40
//`define WB_BASE_ADR_COL4     16'h50
`define WB_BASE_ADR_CSR        16'h10*`DCOL

//*********************************************//
//*                                           *//
//* Relative adresses of the EOC registers.   *//
//*                                           *//
//*********************************************//
`define CONF_REG_PIX0        4'd0
`define CONF_REG_PIX1        4'd1
`define CONF_REG_PIX2        4'd2
`define CONF_REG_PIX3        4'd3
`define CONF_REG_PIX4        4'd4
`define CONF_REG_PIX5        4'd5
`define CONF_REG_PIX6        4'd6
`define CONF_REG_PIX7        4'd7
`define CONF_REG_PIX8        4'd8
`define CONF_REG_PIX9        4'd9
`define CONF_REG_EOC         4'd10

//*********************************************//
//*                                           *//
//* Relative adresses of the control registers*//
//* at the periphery.                         *//
//*                                           *//
//*********************************************//
`define CONF_REG_TS_INI      4'h0
`define CONF_REG_TS_CNT      4'h1

//*********************************************//
//*                                           *//
//* Definitions of the I2C module.            *//
//*                                           *//
//*********************************************//
`define SLOW_CONTROL_FM      0     //If defined use slow_control_fm instead of the I2C block to
                                   //execute read/write operations in the wishbone bus.

`define ADRLEN               2     //number of address bytes
`define DATLEN               1     //number of data bytes
`define TIMEOUT              1023  //Watchdog
`define I2C_tick             250   //Half period in ns of the SCL clock
