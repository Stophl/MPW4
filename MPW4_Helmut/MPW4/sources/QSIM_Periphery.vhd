
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


 
 
entity QSIM_Periphery is

 

  port (
   
     clk40MHz_i: in STD_LOGIC;
     rst_n_i: in STD_LOGIC;
     
     --I2C interface
     I2C_SCL_i: in STD_LOGIC;                       --I2C SCL connect to pad input
     I2C_SDA_o: out STD_LOGIC;                    --I2C SDA connect to pad enable (enable if low)
     I2C_SDA_i: in STD_LOGIC;                     --I2C SDA connect to pad input
     
     --Signals from/to matrix
     ADDR_OUT_B1:  in std_logic_vector(7 downto 0);
     ADDR_OUT_B0:  in std_logic_vector(7 downto 0);
      
     TS_LE_out_B1: in std_logic_vector(7 downto 0);
     TS_LE_out_B0: in std_logic_vector(7 downto 0);
     TS_TE_out_B1: in std_logic_vector(7 downto 0);
     TS_TE_out_B0: in std_logic_vector(7 downto 0);
  
     HIT_OUT1:     in STD_LOGIC; 
     HIT_OUT0:     in STD_LOGIC; 
     SER_IN1:      in STD_LOGIC; 
     SER_IN0:      in STD_LOGIC; 
     
     TS:           out std_logic_vector(7 downto 0);
     HB1:          in STD_LOGIC;  --inout ???????????????????
     HB0:          in STD_LOGIC; 
     FREEZE1:      out STD_LOGIC;
     FREEZE0:      out STD_LOGIC;
     HB_EN_COL1:   out STD_LOGIC;
     HB_EN_COL0:   out STD_LOGIC;
     RD1:          out STD_LOGIC;
     RD0:          out STD_LOGIC;
     
     CK11:      out STD_LOGIC;
     CK10:      out STD_LOGIC;
     CK21:      out STD_LOGIC;
     CK20:      out STD_LOGIC;
     LD1 :      out std_logic_vector(7 downto 0);
     LD0 :      out std_logic_vector(7 downto 0);
     SER_OUT1:  out STD_LOGIC;
     SER_OUT0:  out STD_LOGIC;
     SHIFT_EN1: out STD_LOGIC;
     SHIFT_EN0: out STD_LOGIC;
     TP :      out std_logic_vector(7 downto 0)
    
                  
  
  );
end QSIM_Periphery; 
     
 
architecture STRUCTURE of QSIM_Periphery is

  type eoc_array_7b is array(1 downto 0) of std_logic_vector(7 downto 0); 
  type eoc_array_1b is array(1 downto 0) of std_logic_vector(0 downto 0); 



--component I2C_slave_WB_master is
--  generic (ADRLEN: integer:= 2; DATLEN: integer:=1; TIMEOUT: integer:=1023);
--  port ( 
--   clock: in STD_LOGIC;                         --system clock (f_clk > 2*f_I2C)
--   reset: in STD_LOGIC;                         --asyncronous reset active high
--   useclkgating: in STD_LOGIC;                  --if 1 enable the clock gating
--   ADDRESS:in STD_LOGIC_VECTOR ( 6 downto 0 );  --I2C address (7 bit mode only)
--   I2C_SCL: in STD_LOGIC;                       --I2C SCL connect to pad input
--   I2C_SDA_o: out STD_LOGIC;                    --I2C SDA connect to pad enable (enable if low)
--   I2C_SDA_i: in STD_LOGIC;                     --I2C SDA connect to pad input
--   wb_adr_o: out STD_LOGIC_VECTOR ( 8*ADRLEN-1 downto 0 ); --wishbone address
--   wb_wen_o: out STD_LOGIC;                     --wishbone write enable
--   wb_stb_o: out STD_LOGIC;                     --wishbone strobe
--   wb_ack_i: in STD_LOGIC;                      --wishbone acknoledge
--   wb_dat_i: in STD_LOGIC_VECTOR ( 8*DATLEN-1 downto 0 ); --wishbone data from slave to master
--   wb_dat_o: out STD_LOGIC_VECTOR ( 8*DATLEN-1 downto 0 ); --wishbone data from master to slave
--   TP0_o: out STD_LOGIC;
--   enable:   out STD_LOGIC                      --out enable flag
--  );
--  end component I2C_slave_WB_master;
 
--  component control_status_registers is 
--  port (
--     clk40MHz_i: in STD_LOGIC;
--     rst_n_i: in STD_LOGIC;
--     --Wishbone interface
--     wb_adr_i: in STD_LOGIC_VECTOR ( 15 downto 0 ); 
--     wb_base_adr_i: in STD_LOGIC_VECTOR ( 15 downto 0 ); 
--     wb_wen_i: in STD_LOGIC;
--     wb_stb_i: in STD_LOGIC;
--     wb_ack_o: out STD_LOGIC;
--     wb_dat_o: out STD_LOGIC_VECTOR ( 7 downto 0 ); 
--     wb_dat_i: in STD_LOGIC_VECTOR ( 7 downto 0 ); 
--     wb_val_o: out STD_LOGIC;
--     --Slow control
--     ts_ini_val_o: out STD_LOGIC_VECTOR ( 7 downto 0 ); 
--     ts_enable_o: out STD_LOGIC;
--     ts_set_val_o: out STD_LOGIC
--    );
--    end component control_status_registers;           

component periphery is 
  port (
     clk40MHz_i: in STD_LOGIC;
     rst_n_i: in STD_LOGIC;
     
     --I2C interface
     I2C_SCL_i: in STD_LOGIC;                       --I2C SCL connect to pad input
     I2C_SDA_o: out STD_LOGIC;                    --I2C SDA connect to pad enable (enable if low)
     I2C_SDA_i: in STD_LOGIC;                     --I2C SDA connect to pad input
     
     --Signals from/to matrix
     ADDR_OUT_B:  in eoc_array_7b; 
     TS_LE_out_B: in eoc_array_7b; 
     TS_TE_out_B: in eoc_array_7b; 
     HIT_OUT:     in eoc_array_1b;
     SER_IN:      in eoc_array_1b;
     
     TS:          out std_logic_vector(7 downto 0);
     HB:          in eoc_array_1b;  --inout ???????????????????
     FREEZE:      out eoc_array_1b;
     HB_EN_COL:   out eoc_array_1b;
     RD:          out eoc_array_1b;
     
     CK1:      out eoc_array_1b;
     CK2:      out eoc_array_1b;
     LD :      out eoc_array_7b;
     SER_OUT:  out eoc_array_1b;
     SHIFT_EN: out eoc_array_1b;
     TP :      out std_logic_vector(7 downto 0)
    );
    end component periphery;                    
                        
  
                        
                        
                        
                        
  

 signal s_eoc_ADDR_OUT_B : eoc_array_7b := (others => (others => '0'));
 signal s_eoc_TS_LE_out_B : eoc_array_7b := (others => (others => '0'));
 signal s_eoc_TS_TE_out_B : eoc_array_7b := (others => (others => '0'));
 signal s_eoc_HIT_OUT: eoc_array_1b:= (others => (others => '0'));
 signal s_eoc_SER_IN: eoc_array_1b := (others => (others => '0'));
 signal s_eoc_HB: eoc_array_1b := (others => (others => '0')); 
 signal s_eoc_CK1: eoc_array_1b;
 signal s_eoc_CK2: eoc_array_1b;
 signal s_eoc_LD : eoc_array_7b;
 signal s_eoc_SER_OUT:eoc_array_1b;
 signal s_eoc_SHIFT_EN: eoc_array_1b;
 
 signal periphery_TP: std_logic_vector(7 downto 0);
  --------------------------------------------------------------------------------------------------------
  
  
  
  
  
begin


-- I2C_WB_inst1 : I2C_slave_WB_master
--      port map (
--         clock     => axi_clk,
--         reset     => s_locked,  -- active low reset !!
--         useclkgating => '0',
--         ADDRESS => "1001101",      -- I2C Addr: 0x4d
--         I2C_SCL    => s_sim_scl_i, -- from PS Master over PMOD1_7
--         I2C_SDA_O  => s_WB_sda_o, -- to PS
--         I2C_SDA_I  => s_sim_sda_i, -- from PS PS Master over PMOD1_3
--         wb_adr_o => s_wb_adr_o,
--         wb_wen_o => s_wb_wen_o,              
--         wb_stb_o => s_wb_stb_o,                     
--         wb_ack_i => s_wb_ack_i,
--         wb_dat_i => s_wb_dat_i,
--         wb_dat_o => s_wb_dat_o,
--         TP0_o => s_TP0_o,
--         enable => s_WB_enable ); 

--WB_CSR_REG_inst1: control_status_registers
--    port map(
--        clk40MHz_i => axi_clk,
--        rst_n_i => s_locked,
--        --Wishbone interface
--        wb_adr_i => s_wb_adr_o,
--        wb_base_adr_i => x"a0a1",
--        wb_wen_i => s_wb_wen_o,
--        wb_stb_i => s_wb_stb_o,                     
--        wb_ack_o => s_wb_ack_i,   
--        wb_dat_o => s_wb_dat_i,
--        wb_dat_i => s_wb_dat_o,               
--        wb_val_o => s_wb_val_o,
--        --Slow control
--        ts_ini_val_o => open,
--        ts_enable_o => open,
--        ts_set_val_o=> open
--        );
 
 periphery_inst: periphery
 port map(
     clk40MHz_i => clk40MHz_i,
     rst_n_i => rst_n_i,
     
     --I2C interface
     I2C_SCL_i  => I2C_SCL_i, -- from PS Master over PMOD1_7
     I2C_SDA_o  => I2C_SDA_o, -- to PS
     I2C_SDA_i  => I2C_SDA_i, -- from PS PS Master over PMOD1_3                    --I2C SDA connect to pad input
  
 
       
--     --Signals from/to matrix
--     ADDR_OUT_B => s_eoc_ADDR_OUT_B,
--     TS_LE_out_B => s_eoc_TS_LE_out_B,
--     TS_TE_out_B => s_eoc_TS_TE_out_B, 
--     HIT_OUT => s_eoc_HIT_OUT,
--     SER_IN => s_eoc_SER_IN,
     
     HB => s_eoc_HB,    
     TS => open,   --inout ???????????????????
     FREEZE => open,
     HB_EN_COL => open,
     RD => open,
     
     CK1 => s_eoc_CK1,
     CK2 => s_eoc_CK2,
     LD => s_eoc_LD,
     SER_OUT => s_eoc_SER_OUT,
     SHIFT_EN => s_eoc_SHIFT_EN,
     TP => periphery_TP
     );
 
  -- connect signals to pins:
     ADDR_OUT_B1 <= s_eoc_ADDR_OUT_B(1);
     ADDR_OUT_B0 <= s_eoc_ADDR_OUT_B(1);
      
     TS_LE_out_B1 <= s_eoc_TS_LE_out_B(1);
     TS_LE_out_B0 <= s_eoc_TS_LE_out_B(0);
     TS_TE_out_B1 <= s_eoc_TS_TE_out_B(1);
     TS_TE_out_B0 <= s_eoc_TS_TE_out_B(0);
  
     HIT_OUT1 <= s_eoc_HIT_OUT(1);
     HIT_OUT0 <= s_eoc_HIT_OUT(0);
     SER_IN1 <= s_eoc_SER_IN(1);
     SER_IN0 <= s_eoc_SER_IN(0);
     
     HB1 <=  s_eoc_HB(1);
     HB0 <=  s_eoc_HB(0);
    
     
     CK11 <= s_eoc_CK1(1);
     CK10 <= s_eoc_CK1(0);
     CK21 <= s_eoc_CK2(1);
     CK20 <= s_eoc_CK2(0);
     LD1 <= s_eoc_LD(1);
     LD0 <= s_eoc_LD(0);
     SER_OUT1 <= s_eoc_SER_OUT(1);
     SER_OUT0 <= s_eoc_SER_OUT(0);
     SHIFT_EN1 <= s_eoc_SHIFT_EN(1);
     SHIFT_EN0 <= s_eoc_SHIFT_EN(0);
     TP <= periphery_TP;
    
     



end STRUCTURE;

