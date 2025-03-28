
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_misc.OR_REDUCE; 
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

 
 
entity caribou_top_wrapper is

  generic (
      SCL_INERTIAL_DELAY : integer range 0 to 255 := 15;
      SDA_INERTIAL_DELAY : integer range 0 to 255 := 15
      );


  port (
   
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    SI5345_CLK_OUT8_clk_n : in STD_LOGIC;
    SI5345_CLK_OUT8_clk_p : in STD_LOGIC;
    
    Transceiver_RX_n : in STD_LOGIC;
    Transceiver_RX_p : in STD_LOGIC;
    Transceiver_refClk_clk_n : in STD_LOGIC;
    Transceiver_refClk_clk_p : in STD_LOGIC;
    
    FMC_LPC_LA27_P  : inout STD_LOGIC; --scl
    FMC_LPC_LA27_N  : inout STD_LOGIC; --sda
    
    IIC_SCL_MAIN_LS: inout STD_LOGIC; --scl
    IIC_SDA_MAIN_LS: inout STD_LOGIC; --sda
    
  
    clk_p : in STD_LOGIC;
    clk_n : in STD_LOGIC;
    
    USRCLK_P: in STD_LOGIC;
    USRCLK_N: in STD_LOGIC;
    
    MGTREFCLK1P: in STD_LOGIC;
    MGTREFCLK1N: in STD_LOGIC;
    
    txp                  : out    std_logic;   --SFP
    txn                  : out    std_logic;
    rxp                  : in     std_logic;
    rxn                  : in     std_logic;
   
    FMC_LPC_LA02_P: out STD_LOGIC;
    FMC_LPC_LA02_N: out STD_LOGIC;
    
    FMC_LPC_LA04_P: out STD_LOGIC;
    FMC_LPC_LA04_N: out STD_LOGIC;
    
    FMC_LPC_LA06_P: out STD_LOGIC;
    FMC_LPC_LA06_N: out STD_LOGIC;
    FMC_LPC_LA08_P: out STD_LOGIC;
    FMC_LPC_LA08_N: out STD_LOGIC;
    
    
   
    
    dip_switches_4bits_tri_i: in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_sws_3bits_tri_i: in STD_LOGIC_VECTOR ( 2 downto 0 );
    
    USER_SMA_CLOCK_P : in std_logic;
    USER_SMA_CLOCK_N : in std_logic;
    
    --  FMC _HPC  caribou ROW a ------------------------------------------
    
    FMC_HPC_DP1_M2C_P: in STD_LOGIC;
    FMC_HPC_DP1_M2C_N: in STD_LOGIC;
    
    FMC_HPC_DP2_M2C_P: in STD_LOGIC;
    FMC_HPC_DP2_M2C_N: in STD_LOGIC;
    
    FMC_HPC_DP3_M2C_P: in STD_LOGIC;
    FMC_HPC_DP3_M2C_N: in STD_LOGIC;
        
    FMC_HPC_DP4_M2C_P: in STD_LOGIC;
    FMC_HPC_DP4_M2C_N: in STD_LOGIC;
        
    FMC_HPC_DP5_M2C_P: in STD_LOGIC;
    FMC_HPC_DP5_M2C_N: in STD_LOGIC;
            
    FMC_HPC_DP1_C2M_P: in STD_LOGIC;
    FMC_HPC_DP1_C2M_N: in STD_LOGIC;
    
    FMC_HPC_DP2_C2M_P: in STD_LOGIC;
    FMC_HPC_DP2_C2M_N: in STD_LOGIC;
       
    FMC_HPC_DP3_C2M_P: in STD_LOGIC;
    FMC_HPC_DP3_C2M_N: in STD_LOGIC;
          
    FMC_HPC_DP4_C2M_P: in STD_LOGIC;
    FMC_HPC_DP4_C2M_N: in STD_LOGIC;
             
    FMC_HPC_DP5_C2M_P: in STD_LOGIC;
    FMC_HPC_DP5_C2M_N: in STD_LOGIC;
                
    --  FMC _HPC caribou ROW b ------------------------------------------
    
    FMC_HPC_DP7_M2C_P: in STD_LOGIC;
    FMC_HPC_DP7_M2C_N: in STD_LOGIC;
    
    FMC_HPC_DP6_M2C_P: in STD_LOGIC;
    FMC_HPC_DP6_M2C_N: in STD_LOGIC;
    
    FMC_HPC_GBTCLK1_M2C_P: in STD_LOGIC;
    FMC_HPC_GBTCLK1_M2C_N: in STD_LOGIC;
    
    FMC_HPC_DP7_C2M_P: in STD_LOGIC;
    FMC_HPC_DP7_C2M_N: in STD_LOGIC;
    
    FMC_HPC_DP6_C2M_P: in STD_LOGIC;
    FMC_HPC_DP6_C2M_N: in STD_LOGIC;
    
    --  FMC _HPC  caribou ROW c ------------------------------------------
    
    FMC_HPC_DP0_C2M_P: in STD_LOGIC;
    FMC_HPC_DP0_C2M_N: in STD_LOGIC;
    
    --FMC_HPC_DP0_M2C_P: in STD_LOGIC;
    --FMC_HPC_DP0_M2C_N: in STD_LOGIC;
    
    FMC_LVDS5_P: out STD_LOGIC;
    FMC_LVDS5_N: out STD_LOGIC;
    
    FMC_LVDS9_P: out STD_LOGIC;  
    FMC_LVDS9_N: out STD_LOGIC;  
    
    FMC_LVDS16_P: out STD_LOGIC;
    FMC_LVDS16_N: out STD_LOGIC;
    
    FMC_CMOS_IN8_DIF_P: out STD_LOGIC;
    FMC_CMOS_IN8_DIF_N: out STD_LOGIC;
    
    FMC_CMOS_IN6_DIF_P: out STD_LOGIC;
    FMC_CMOS_IN6_DIF_N: out STD_LOGIC;
    
    
    
    --  FMC _HPC  caribou ROW d ------------------------------------------
        
    SI_CLK_OUT6_P: in STD_LOGIC;
    SI_CLK_OUT6_N: in STD_LOGIC;
    
    FMC_TLU_CLK_P: in STD_LOGIC;
    FMC_TLU_CLK_N: in STD_LOGIC;
    
    FMC_TLU_TRG_P: in STD_LOGIC;
    FMC_TLU_TRG_N: in STD_LOGIC;
   
    FMC_TLU_BSY_P: out STD_LOGIC;
    FMC_TLU_BSY_N: out STD_LOGIC;
   
    FMC_TLU_RST_P: in STD_LOGIC;
    FMC_TLU_RST_N: in STD_LOGIC;
   
    FMC_LVDS17_P: in STD_LOGIC;
    FMC_LVDS17_N: in STD_LOGIC;
    
    FMC_CMOS_IN7_DIF_P: out STD_LOGIC;
    FMC_CMOS_IN7_DIF_N: out STD_LOGIC;
    
    FMC_CMOS_IN5_DIF_P: in STD_LOGIC;
    FMC_CMOS_IN5_DIF_N: in STD_LOGIC;
    
  
  
  
  --  FMC _L P C  caribou ROW e ------------------------------------------
           
   --FMC_ADC_OUT_A2_P: in STD_LOGIC;
   --FMC_ADC_OUT_A2_N: in STD_LOGIC;
 
   FMC_ADC_OUT_C2_P: out STD_LOGIC;   -- FMC_LPC_LA10_P
   FMC_ADC_OUT_C2_N: out STD_LOGIC;
 
   FMC_ADC_OUT_E2_P: in STD_LOGIC;
   FMC_ADC_OUT_E2_N: in STD_LOGIC;
 
   FMC_INJ_CTRL4_DIF_P: out STD_LOGIC;
   FMC_INJ_CTRL4_DIF_N: in STD_LOGIC;
 
   --FMC_LVDS12_P: in STD_LOGIC;
   --FMC_LVDS12_N: in STD_LOGIC;
   
   --  FMC _L P C  caribou ROW f ------------------------------------------
   FMC_LVDS2_P: in STD_LOGIC;
   FMC_LVDS2_N: in STD_LOGIC;
 
   FMC_ADC_OUT_B2_P: in STD_LOGIC;
   FMC_ADC_OUT_B2_N: in STD_LOGIC;
 
   FMC_ADC_OUT_D2_P: in STD_LOGIC;  
   FMC_ADC_OUT_D2_N: out STD_LOGIC;  
 
   FMC_ADC_OUT_F2_P: out STD_LOGIC; -- FMC_LPC_LA13_P
   FMC_ADC_OUT_F2_N: out STD_LOGIC;

   FMC_INJ_CTRL3_DIF_P: out STD_LOGIC;
   FMC_INJ_CTRL3_DIF_N: out STD_LOGIC;

   FMC_LVDS15_P: in STD_LOGIC;
   FMC_LVDS15_N: in STD_LOGIC;

   FMC_LPC_LA26_P: out STD_LOGIC;
   FMC_LPC_LA26_N: out STD_LOGIC;
   
   --  FMC _HPC  caribou ROW g ------------------------------------------
   FMC_ADC_DCO2_P: in STD_LOGIC;
   FMC_ADC_DCO2_N: in STD_LOGIC;
  
   FMC_LVDS1_P: in STD_LOGIC;
   FMC_LVDS1_N: in STD_LOGIC;
   
   FMC_LVDS3_P: in STD_LOGIC;
   FMC_LVDS3_N: in STD_LOGIC;
   
   FMC_LVDS6_P: in STD_LOGIC;
   FMC_LVDS6_N: in STD_LOGIC;
   
   FMC_LVDS8_P: out STD_LOGIC;
   FMC_LVDS8_N: out STD_LOGIC;
   
   FMC_LVDS11_P: out STD_LOGIC;   --PAD_RST_P
   FMC_LVDS11_N: out STD_LOGIC;   --PAD_RST_N
   
   FMC_REF_CLK_P: out STD_LOGIC;
   FMC_REF_CLK_N: out STD_LOGIC;
   
   FMC_ADC_OUT_H2_P: IN STD_LOGIC_VECTOR(0 DOWNTO 0);
   FMC_ADC_OUT_H2_N: IN STD_LOGIC_VECTOR(0 DOWNTO 0);
   
   FMC_CMOS_IN4_DIF_P: out STD_LOGIC;
   FMC_CMOS_IN4_DIF_N: out STD_LOGIC;
   
   FMC_CMOS_IN2_DIF_P: out STD_LOGIC;
   FMC_CMOS_IN2_DIF_N: out STD_LOGIC;
   
   FMC_CMOS_OUT10_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT10_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_OUT13_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT13_DIF_N: in STD_LOGIC;
   
   
   --  FMC _HPC  caribou ROW h ------------------------------------------
   
   --SI5345_CLK_OUT8_P: in STD_LOGIC;
   --SI5345_CLK_OUT8_N: in STD_LOGIC;
   
   FMC_ADC_FCO2_P: in STD_LOGIC;
   FMC_ADC_FCO2_N: in STD_LOGIC;
   
   FMC_LVDS4_P: out STD_LOGIC;
   FMC_LVDS4_N: out STD_LOGIC;
   
   FMC_LVDS7_P: out STD_LOGIC;
   FMC_LVDS7_N: out STD_LOGIC;
   
   FMC_LVDS10_P: out STD_LOGIC;
   FMC_LVDS10_N: out STD_LOGIC;
   
   FMC_LVDS14_P: in STD_LOGIC;-- IN STD_LOGIC_VECTOR(0 DOWNTO 0);
   FMC_LVDS14_N: in STD_LOGIC;--: IN STD_LOGIC_VECTOR(0 DOWNTO 0);
   
   FMC_ADC_OUT_G2_P: in STD_LOGIC;
   FMC_ADC_OUT_G2_N: in STD_LOGIC;
   
   FMC_INJ_CTRL1_DIF_P: out STD_LOGIC;
   FMC_INJ_CTRL1_DIF_N: out STD_LOGIC;
  
   FMC_CMOS_IN3_DIF_P: out STD_LOGIC;
   FMC_CMOS_IN3_DIF_N: out STD_LOGIC;
   
   FMC_CMOS_IN1_DIF_P: out STD_LOGIC;
   FMC_CMOS_IN1_DIF_N: out STD_LOGIC;
   
   FMC_CMOS_OUT12_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT12_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_OUT14_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT14_DIF_N: in STD_LOGIC;
   
   -- FMC _L P C  caribou ROW j ------------------------------------------
   
   FMC_ADC_FCO1_P: in STD_LOGIC;
   FMC_ADC_FCO1_N: in STD_LOGIC;
   
   FMC_ADC_OUT_A1_P: in STD_LOGIC;
   FMC_ADC_OUT_A1_N: in STD_LOGIC;
   
   FMC_ADC_OUT_C1_P: in STD_LOGIC;
   FMC_ADC_OUT_C1_N: in STD_LOGIC;
   
   FMC_ADC_OUT_E1_P: in STD_LOGIC;
   FMC_ADC_OUT_E1_N: in STD_LOGIC;
   
   FMC_ADC_OUT_G1_P: out STD_LOGIC;  -- FMC_LPC_LA12_P
   FMC_ADC_OUT_G1_N: out STD_LOGIC;
   
   FMC_INJ_CTRL2_DIF_P: out STD_LOGIC;
   FMC_INJ_CTRL2_DIF_N: out STD_LOGIC;
   
   FMC_CMOS_OUT1_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT1_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_OUT3_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT3_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_OUT5_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT5_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_OUT7_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT7_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_OUT9_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT9_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_IN10_DIF_P: out STD_LOGIC;
   FMC_CMOS_IN10_DIF_N: out STD_LOGIC;
   
   
   
    -- FMC _L P C  caribou ROW k ------------------------------------------
   
   FMC_ADC_DCO1_P: in STD_LOGIC;
   FMC_ADC_DCO1_N: in STD_LOGIC;
   
   FMC_ADC_OUT_B1_P: in STD_LOGIC;
   FMC_ADC_OUT_B1_N: in STD_LOGIC;
   
   FMC_ADC_OUT_D1_P: in STD_LOGIC;
   FMC_ADC_OUT_D1_N: in STD_LOGIC;
   
   FMC_ADC_OUT_F1_P: in STD_LOGIC;
   FMC_ADC_OUT_F1_N: in STD_LOGIC;
   
   FMC_ADC_OUT_H1_P: in STD_LOGIC;  -- FMC_LPC_LA11_P
   FMC_ADC_OUT_H1_N: in STD_LOGIC;
   
   FMC_LVDS13_P: out STD_LOGIC;
   FMC_LVDS13_N: out STD_LOGIC;
   
   FMC_CMOS_OUT2_DIF_P: in STD_LOGIC; -- used as TestPin
   FMC_CMOS_OUT2_DIF_N: out STD_LOGIC; -- used as TestPin
  
   FMC_CMOS_OUT4_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT4_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_OUT6_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT6_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_OUT8_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT8_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_OUT11_DIF_P: in STD_LOGIC;
   FMC_CMOS_OUT11_DIF_N: in STD_LOGIC;
   
   FMC_CMOS_IN9_DIF_P: in STD_LOGIC;
   FMC_CMOS_IN9_DIF_N: in STD_LOGIC;
   
   SFP_TX_DISABLE: out STD_LOGIC;  
   
   PMOD1_0_LS : out STD_LOGIC; 
   PMOD1_1_LS : out STD_LOGIC; 
   PMOD1_2_LS : out STD_LOGIC; 
   PMOD1_3_LS : out STD_LOGIC; --inout--SDA
   PMOD1_4_LS : out STD_LOGIC; 
   PMOD1_5_LS : out STD_LOGIC; 
   PMOD1_6_LS : out STD_LOGIC; 
   PMOD1_7_LS : out STD_LOGIC; --in--SCL
           
       
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end caribou_top_wrapper; 
             
             
architecture STRUCTURE of caribou_top_wrapper is

  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of STRUCTURE : architecture is "yes";
  

  component caribou_top is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;

    
    
    axi_clk : out STD_LOGIC;
    FCLK_CLK1_OUT : out STD_LOGIC;
    
    ctrl_reg_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl1_reg_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl1_we : out STD_LOGIC;
    ctrl2_reg_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl3_reg_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl3_we : out STD_LOGIC;
    ctrl14_reg_out: out STD_LOGIC_VECTOR ( 31 downto 0 );
    
    status0_0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status0_1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status1_0_in: in STD_LOGIC_VECTOR ( 31 downto 0 );
    status1_1_in: in STD_LOGIC_VECTOR ( 31 downto 0 );
    status2_0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status2_1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status3_0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status3_1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    --led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    
    reg_a_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_a_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_b_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_b_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_c_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_c_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_d_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_d_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_e_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_e_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_f_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_f_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_g_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_g_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_h_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_h_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    
    FIFO_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_tlast : in STD_LOGIC;
    FIFO_tready : out STD_LOGIC;
    FIFO_tvalid : in STD_LOGIC;
    
    FIFO1_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO1_tlast : in STD_LOGIC;
    FIFO1_Tready : out STD_LOGIC;
    FIFO1_tvalid : in STD_LOGIC;
      
    scl_o : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    
    sim_scl_i : in STD_LOGIC;
    sim_scl_o : out STD_LOGIC;
    sim_scl_t : out STD_LOGIC;
    sim_sda_i : in STD_LOGIC;
    sim_sda_o : out STD_LOGIC;
    sim_sda_t : out STD_LOGIC
    
   
    
  );
  end component caribou_top;
  
  component clk_wiz_0 is
     Port ( 
          clk_out1 : out STD_LOGIC;
          clk_out2 : out STD_LOGIC;
          clk_out3 : out STD_LOGIC;
          clk_out4 : out STD_LOGIC;
          reset : in STD_LOGIC;
          locked : out STD_LOGIC;
          clk_in1 : in STD_LOGIC );
  end component clk_wiz_0;
  
  
--  component PLL_20MHz_to_320MHz is  
--  Port ( 
--    clk_in2 : in STD_LOGIC;
--    clk_in_sel : in STD_LOGIC;
--    clk_out1 : out STD_LOGIC;
--    clk_out2 : out STD_LOGIC;
--    clk_out3 : out STD_LOGIC;
--    clk_out4 : out STD_LOGIC;
--    clk_out5 : out STD_Logic;
--    clk_out6 : out STD_Logic;
--    reset : in STD_LOGIC;
--    locked : out STD_LOGIC;
--    clk_in1 : in STD_LOGIC );
-- end component PLL_20MHz_to_320MHz; 

  component PLL_40MHz_to_640MHz is  
  Port ( 
    clk_in2 : in STD_LOGIC;
    clk_in_sel : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    clk_out4 : out STD_LOGIC;
    clk_out5 : out STD_Logic;
    clk_out6 : out STD_Logic;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC );
 end component PLL_40MHz_to_640MHz; 
 

  component clk_div is
     Port ( 
          clk_out1 : out STD_LOGIC;
          clk_out2 : out STD_LOGIC;
          clk_out3 : out STD_LOGIC;
          reset : in STD_LOGIC;
          clk_in1 : in STD_LOGIC );
  end component clk_div;
  
  
  
  
  
  
 
 
  component GBE_SFP is
  Port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    
    clk_200MHz_in: in STD_LOGIC;
    
    glbl_rst: in STD_LOGIC;
    transmit_start: in STD_LOGIC;
    data_taking_enabled: in STD_LOGIC;
    
    global_TS: in std_logic_vector (63 downto 0);
    
    IP_addr_2LSBs: in std_logic_vector (1 downto 0);
    IP_addr_28MSBs: in std_logic_vector (27 downto 0);
    piggy_mounted: in STD_LOGIC;
    empty_base_in:  in STD_LOGIC;
    empty_piggy_in:  in STD_LOGIC;
    
    mac_tx_clock: out std_logic; 
    read_ack_base: out std_logic; 
    read_ack_piggy: out std_logic; 
    data_base: in std_logic_vector (31 downto 0);
    data_piggy: in std_logic_vector (31 downto 0);
     
    mac_rx_clock: out std_logic; 
    
    txp                  : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
    txn                  : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
    rxp                  : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
    rxn                  : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.
    
    send_UDP_active:		out  std_logic; 
    
    status_vector_out : out std_logic_vector (19 downto 0);
    GBE_tw_tp_out1: out std_logic;
    GBE_tw_tp_out2: out std_logic; 
    GBE_TP_out: out std_logic_vector (7 downto 0)
  );
end component GBE_SFP;


component fifo_generator_1 IS
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    --wr_data_count : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    prog_full : OUT STD_LOGIC
  );
END component fifo_generator_1;





 
 
 
 
 
 
 component serout_store is
     port 
     (
         clk            : in std_logic;
         PARENSER_in    : in std_logic;
         SEROUT_in    : in std_logic;
         
         FIFOwe_out    : out std_logic;
         FIFOcounter_out    : out std_logic_vector(15 downto 0);
         
         TP_out    : out std_logic;
         TPP_out : out std_logic );
 
  end component serout_store; 
 
 
  

COMPONENT ADC9249 is
    Port ( IDEL_refclk : in STD_LOGIC;
           IDEL_CTRL_rst : in STD_LOGIC;
           IDEL_ld: in STD_LOGIC;
           IDEL_cntvalin_ADC1: in STD_LOGIC_VECTOR(4 DOWNTO 0);
           IDEL_cntvalin_ADC2: in STD_LOGIC_VECTOR(4 DOWNTO 0);
           
           ADC1_SERIN: in STD_LOGIC;
           ADC2_SERIN: in STD_LOGIC;
           ADC_FCO: in STD_LOGIC;
           ADC_DCO: in STD_LOGIC;
           
           axi_clk: in STD_LOGIC;
           Trigger_FIFOwe_stop_in: in STD_LOGIC;   --for trigger history fifo
                  FIFOwe_start_in: in STD_LOGIC;
           tlu_TRG_tag_in: in STD_LOGIC_VECTOR(3 DOWNTO 0);
           
           tdata_ADC_FIFO_out: out STD_LOGIC_VECTOR(31 DOWNTO 0);
           tvalid_ADC_FIFO_out: out STD_LOGIC;
           tlast_ADC_FIFO_out: out STD_LOGIC
          );
END COMPONENT ADC9249;

component shutter_TOT_counter 
    Port (           axi_clk : in STD_LOGIC;
                     clk_200 : in STD_LOGIC;
                    reset_in : in STD_LOGIC;
                      
           SFOUTBUFF_COMP_in : in STD_LOGIC;
               shutter_val_in: in STD_LOGIC_VECTOR(31 DOWNTO 0);
             start_shutter_in: in STD_LOGIC;
                    shutter_o: out STD_LOGIC;
       SFOUTBUFF_COMP_pedge_o: out STD_LOGIC;
         shutter_or_TLUcont_o: out STD_LOGIC;
                    
      counter_async_shutter_o: out STD_LOGIC_VECTOR(15 DOWNTO 0);
          counter200MHz_TOT_o: out STD_LOGIC_VECTOR(15 DOWNTO 0);
                  TLU_BSY_in : in STD_LOGIC;
                 TLU_CONT_in : in STD_LOGIC;
                 TLU_CONTen_o: out STD_LOGIC);
end component shutter_TOT_counter;


  
 component TLU_TDH
  port (
	 fadc_clk			: in  std_logic; 
	 
	 fadc_busy			: in  std_logic; 
	 busy_end_in		: in std_logic_vector (15 downto 0); 
	
	 TLU_trg			: in  std_logic;
	 TLU_reset			: in  std_logic; --unused
	 TLU_busy		    : out  std_logic; 
	 
	 o_trg_tag		: out std_logic_vector (15 downto 0); --event#
	 o_trg   		: out  std_logic; 
	 
	 TP		    : out std_logic_vector (7 downto 0)  );
  end component;
  
 
  
  component data_fifo IS
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
end component;

component transmit_fifo IS
  port (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
end component;

component clock_domain_fifo IS
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
end component;

component sim_TLU_fsm is
   port (  clk_i :   in   std_logic;
         start_i :   in   std_logic;
         reset_i :   in   std_logic;
          busy_i :   in   std_logic;
          cont_o :   out  std_logic; 
         trgtag_o:   out  std_logic);			
end component;


component WBC_RBC_counters is
    port ( TLU_clk : in STD_LOGIC;
           axi_clk : in STD_LOGIC;
           
           SFOUTBUFF_COMP_filtered: in STD_LOGIC;
           TLU_trg_sim: in STD_LOGIC;
           TLU_trg_tag_we: in STD_LOGIC;
           TLU_trg_tag: in STD_LOGIC_VECTOR (15 downto 0);
           
           wbc_rbc_set : in STD_LOGIC;
           wbc_load_val: in STD_LOGIC_VECTOR (7 downto 0);
           
           TOT_cnt_in: in STD_LOGIC_VECTOR (15 downto 0);
           
           fifo1_stop : in STD_LOGIC;
           fifo1_tdata: out STD_LOGIC_VECTOR (31 downto 0);
           fifo1_tvalid: out STD_LOGIC;
           fifo1_tlast: out STD_LOGIC;
           
           data_fifo_rd: in STD_LOGIC;
           data_fifo_out: out STD_LOGIC_VECTOR (31 downto 0);
           data_fifo_usedw: out STD_LOGIC_VECTOR (15 downto 0)
         );
end component;

component send_SOUT_testpattern_sm is
   port ( clk_i :         in   std_logic;
         reset_i :        in   std_logic;
         start_i:         in   std_logic;
        
         
         Q_10b_o :      out   std_logic_vector(9 downto 0);
         k_char_o:        out  std_logic_vector(0 downto 0);
         
         TP_o :           out  std_logic_vector(7 downto 0);
         TP :             out   std_logic );
end component;


component serout is
port (frame_40 : in std_logic;
       clk_320 : in std_logic;
           pin : in std_logic_vector(9 downto 0);
         sout_h: out std_logic;
         sout_l: out std_logic;
           tp  : out std_logic);
end component;


component SIN is
    Port ( clk_320 : in STD_LOGIC;
       idel_ref_clk: in STD_LOGIC;
            clk_64 : in STD_LOGIC;
           frame64 : in STD_LOGIC;
           axi_clk : in STD_LOGIC;
        
                  rst_n: in STD_LOGIC;
             not_locked: in STD_LOGIC;
           locked_reset: in STD_LOGIC;
           
           FMC_LVDS14_P: in STD_LOGIC;
           FMC_LVDS14_N: in STD_LOGIC;
           
            FMC_LVDS6_P: in STD_LOGIC;
            FMC_LVDS6_N: in STD_LOGIC; 
          
               CNTVALIN : in STD_LOGIC_VECTOR (4 downto 0);
                BITSLIP : in STD_LOGIC_VECTOR (2 downto 0);
              CNTVALIN1 : in STD_LOGIC_VECTOR (4 downto 0);
               BITSLIP1 : in STD_LOGIC_VECTOR (2 downto 0);
              IDELAY_LD: in STD_LOGIC;
             IDELAY1_LD: in STD_LOGIC;
            CNTVALUEOUT: out STD_LOGIC_VECTOR (4 downto 0);
           CNTVALUEOUT1: out STD_LOGIC_VECTOR (4 downto 0);
           
           code_err_reg: out STD_LOGIC;
          code_err1_reg: out STD_LOGIC;
          
     reset_code_err_reg: in STD_LOGIC;
     
           TS_ovfl_cnt : in std_logic_vector(47 downto 0);
        Eventnumber_in : in std_logic_vector(15 downto 0);
     Eventnumber_valid : in STD_LOGIC;
             TLU_TS_in : in std_logic_vector(45 downto 0);
     
          AXI_fifo_data: out STD_LOGIC_VECTOR (31 downto 0);
            AXI_fifo_rd: in STD_LOGIC; 
         AXI_fifo1_data: out STD_LOGIC_VECTOR (31 downto 0);
           AXI_fifo1_rd: in STD_LOGIC;  
    
    
         UDP_fifo_reset: out STD_LOGIC;
         UDP_fifo1_data: out STD_LOGIC_VECTOR (31 downto 0);
           UDP_fifo1_we: out STD_LOGIC;

          UDP_fifo_data: out STD_LOGIC_VECTOR (31 downto 0);
            UDP_fifo_we: out STD_LOGIC;  
            
              SIN_copy: out STD_LOGIC;
              SIN1_copy: out STD_LOGIC;  
             
             TP_decode: out STD_LOGIC_VECTOR (7 downto 0);    
                   TP : out STD_LOGIC;
                  TPP : out STD_LOGIC);
end component;


component heartbeat is

port(
		reset_i			   : in  std_logic;								
		clk_i				   : in  std_logic;	
		heartbeat_o       : out std_logic
 );
end component;

component sim_TLU_aida_fsm is
   port (  clk_i :   in   std_logic;
         reset_i :   in   std_logic;
         start_i :   in   std_logic;
   pedge_nedge_i :   in   std_logic;
          cont_i :   in   std_logic;
         event_o :   out  std_logic_vector(15 downto 0);
        trgtag_o :   out  std_logic);
			
end component;

component reset_TS is

	port 
	(
		clk		: in std_logic;
		arm_in	: in std_logic;
		trg_in  : in std_logic;
		output	: out std_logic);

end component;



component data_reg_buffer is
    Port ( clk : in STD_LOGIC;
           data_taking_enabled: in STD_LOGIC;
           decode:  in STD_LOGIC_VECTOR ( 31 downto 0 );
           decode1: in STD_LOGIC_VECTOR ( 31 downto 0 );
           decode_UDP: out STD_LOGIC_VECTOR ( 31 downto 0 );
           decode1_UDP: out STD_LOGIC_VECTOR ( 31 downto 0 );
           we: in STD_LOGIC;
           we1: in STD_LOGIC;
           we_UDP: out STD_LOGIC;
           we1_UDP: out STD_LOGIC
          );
end component;

component TLUtimestampCounter is
    Port ( clk : in STD_LOGIC;
           tluClk : in std_logic;
           tluRst : in STD_LOGIC;
           TLUcounter : out STD_LOGIC_vector(45 downto 0)
          );
end component TLUtimestampCounter;

  --------------------------------------------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------------------------------------------
  
  

  -- signal declarations : -------------------------
  signal s_in_clk, s_clk_TLU_pll, s_clk_TLU_pll_gbuf, s_TLU_clk_gbuf,s_clk_TLU_pll_40,s_clk_TLU_pll_640,s_clk_TLU_pll_64,s_clk_TLU_pll_320,s_clk_TLU_pll_320b: std_logic;
  signal s_clk_TLU_pll_ser, s_clk_TLU_pll_par, s_clk_TLU_pll_parx5,s_clk_TLU_pll_parx5b,s_clk_TLU_pll_160, s_clk_TLU_pll_parx2p5 : std_logic;
  signal s_in_clk_SI5345_CARboard, s_clk_TLU: std_logic;
  signal s_clk_gbuf, s_ck1_o, s_IBUFenable: std_logic;
  signal s_lvds_input, s_lvds_input_delayed : std_logic;
  signal s_leds: std_logic_vector(3 downto 0) := (others=>'0');
  signal s_clk_20MHz, s_CLKOUT0, s_clk_100MHz,s_clk_40MHz: std_logic := '0';
  signal s_CLKFB: std_logic;
  signal s_locked, s_locked1, s_not_locked: std_logic;
  
  signal s_control_out: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_control_out_p, s_control_out_pp : std_logic_vector(31 downto 0) := (others=>'0');
  signal s_control_out_pulse: std_logic_vector(31 downto 0) := (others=>'0');
  
  signal s_control1_out: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_control1_out_p, s_control1_out_pp : std_logic_vector(31 downto 0) := (others=>'0');
  signal s_control1_out_pulse: std_logic_vector(31 downto 0) := (others=>'0');
  
  signal s_control2_out: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_control2_out_p, s_control2_out_pp : std_logic_vector(31 downto 0) := (others=>'0');
  signal s_control2_out_pulse: std_logic_vector(31 downto 0) := (others=>'0');
  
  signal s_control3_out: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_control3_out_p, s_control3_out_pp : std_logic_vector(31 downto 0) := (others=>'0');
  signal s_control3_out_pulse: std_logic_vector(31 downto 0) := (others=>'0');
  
  signal s_ctrl14_reg_out: std_logic_vector(31 downto 0):= (others=>'0');
  
 
  signal s_status0_0_in: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_status0_1_in: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_status1_0_in: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_status1_1_in: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_status2_0_in: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_status2_1_in: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_status3_0_in: std_logic_vector(31 downto 0) := (others=>'0');
  signal s_status3_1_in: std_logic_vector(31 downto 0) := (others=>'0');
      
  signal s_CNTVALUEIN: std_logic_vector(4 downto 0) := (others=>'0');
  
  signal axi_clk,s_FCLK_CLK1_OUT: std_logic;
  signal s_pedge_sw2: std_logic := '0';
  signal s_inj: std_logic := '0';
  signal s_inj_tmp: std_logic_vector(511 downto 0);
  signal s_tsini_tmp: std_logic_vector(63 downto 0);
  signal s_ts_tmp: std_logic_vector(256 downto 0);
  
  signal s_trg_tmp: std_logic_vector(31 downto 0);
  
  signal s_TSini_pedge,s_TSini_stretched: std_logic := '0';
  signal s_inj_puls, s_inj_puls_del, s_n_inj_puls, s_n_inj_puls_del: std_logic := '0';
  
  signal s_scl_i, s_scl_o, s_scl_t, s_sda_i, s_sda_o, s_sda_t	: std_logic := '0';

  -- Define the states of FIFO fill state machine                                             
  type    state is (IDLE, WAIT_FOR_DATA,SEND_DATA);          
  signal  sm_state : state := IDLE;                                                   


  signal tvalid        : std_logic := '0';
  signal tlast         : std_logic := '0';   
  signal tdata         : std_logic_vector(31 downto 0) := (others => '0');
  signal packet_len_cnt: unsigned(15 downto 0)  := (others => '0');
  signal s_FIFO_tready : std_logic := '0';
  
  
  signal s_PAD_SOUT2, s_PAD_SOUT_FE, s_PAD_PAREN_FE: std_logic := '0';
  
  signal s_PAD_SOUT_PC_input: std_logic := '0';
  signal s_PAD_SEROUT_input: std_logic := '0';
  signal s_nedge_syncres: std_logic := '0';
  signal s_syncres: std_logic := '0';
  
  signal tmp: std_logic_vector(31 downto 0);
  signal sda_tmp: std_logic_vector(63 downto 0);

 
  
  signal fifo1_tdata, fifo1_tdata_tp: std_logic_vector(31 downto 0);
  signal fifo1_tlast, fifo1_tlast_tp: std_logic := '0';
  signal s_FIFO1_tready, s_FIFO1_tready_tp: std_logic;
  signal fifo1_tvalid, fifo1_tvalid_tp: std_logic := '0';
  signal s_SFOUTBUFF_COMP_input: std_logic := '0';
  
  signal s_SOUT_PC_sr: std_logic_vector(147 downto 0);
  
  signal s_FMC_ADC_FCO2: std_logic := '0';
  signal s_FMC_ADC_DCO2, s_DCO2_bufg: std_logic := '0';
  signal s_FMC_ADC_OUT_H2: std_logic := '0';
  signal s_ADC_FCO_h, s_ADC_FCO_l: std_logic := '0'; 
  
  signal s_ser_in_hl,s_FCO_in_hl: std_logic_vector(1 downto 0);
 
  --signal s_bitslip :std_logic_vector(1 downto 0) := (others => '0');                                              
  signal s_clk_div_out,s_clk_div_bufg, s_DCO2_bufg_inv: std_logic;  
  signal s_control2_bitslip0_p, s_control2_bitslip0_pp: std_logic := '0'; 
  signal s_control2_bitslip1_p, s_control2_bitslip1_pp: std_logic := '0'; 
  signal s_locked_reset: std_logic; 
  signal s_shift1, s_shift2: std_logic;
  signal s_FMC_ADC_OUT_G2: std_logic;
  
  signal s_count_async,s_200MHz_cnt,s_count_async_shutter: std_logic_vector(15 downto 0);
  
  
  signal s_ctrl1_we, s_ctrl1_we_p, s_ctrl1_we_pp: std_logic;
  signal s_ctrl3_we, s_ctrl3_we_p, s_ctrl3_we_pp: std_logic;
  
  
  signal s_AMUX_INIT, s_AMUX_PWR, s_AMUX_CLK, s_AMUX_CLK_bar: std_logic := '0'; 
  
  signal scl_unstable_n, s_sda_i_clean, s_scl_i_clean, s_SFOUTBUFF_COMP_filtered,s_SFOUTBUFF_COMP_filtered_pedge: std_logic;
  
  signal s_SFOUTBUFF_COMP_pedge,s_SFOUTBUFF_COMP_pedge_delayed,s_SFOUTBUFF_COMP_filtered_delayed,s_shutter: std_logic := '0'; 
  
  signal s_TLU_CONT, s_TLU_CONT_bar, s_TLU_CONT_in, s_TLU_CONT_in_bar, s_TLU_TRG_in, s_TLU_TRG_in_bar, s_TLU_CLK_in, s_TLU_CLK_in_bar, s_TLU_BSY_out, s_TLU_cont_pedge, s_NIMout1_trigger_to_TLU: std_logic := '0'; 
  signal s_TLU_trg_tag: std_logic_vector(15 downto 0);
  signal s_TLU_trg_tag_we, s_TLU_trg_tag_axi_we, s_TLU_trg_tag_axi_we_pedge : std_logic := '0'; 
  signal s_TP_TLU_TDH : std_logic_vector(7 downto 0);
  signal s_TLU_CONT_en: std_logic := '0'; 
  signal s_FAKE_TLU_CONT: std_logic := '0'; 
  signal s_NIM_OUT1, s_NIM_IN1, s_NIM_GND, s_NIM_OUT2, s_NIM_IN2, s_TW_OUT1, s_test1_pedge, s_test2_pedge: std_logic;  
  
  signal s_user_sma_clk_bufg, s_user_sma_clk: std_logic;   
  
 
  
  signal s_TLU_trg_sim, s_wbc_rbc_empty, s_wbc_rbc_not_empty, s_wbc_rbc_FIFO_read,s_TLU_TRG: std_logic := '0'; 
  signal s_trg_tag_TOTcnt: std_logic_vector(31 downto 0);
  
  signal s_fifo1_tdata: std_logic_vector(31 downto 0);
  signal s_fifo1_tlast: std_logic := '0'; 
  signal s_fifo1_tval, s_fifo1_tvalid: std_logic := '0'; 
  signal s_DataFifo2_usedw: std_logic_vector(15 downto 0);
  
  signal s_FAKE_TLU_BSY, s_FAKE_TLU_RST, s_FAKE_TLU_TRG,s_wbc_rbc_set, s_TLU_clk_TP: std_logic := '0'; 
  
  
  
  signal s_m_sim_scl_i, s_sim_scl_i, s_sim_scl_p_i: std_logic := '1'; 
  signal s_m_sim_scl_o, s_sim_scl_o: std_logic; 
  signal s_m_sim_scl_t, s_sim_scl_t: std_logic; 

  signal s_m_sim_sda_i, s_sim_sda_i, s_sim_sda_p_i: std_logic := '1'; 
  signal s_m_sim_sda_o, s_sim_sda_o: std_logic; 
  signal s_m_sim_sda_t, s_sim_sda_t: std_logic; 
  
  signal s_m_sim_sda_i_p, s_m_sim_sda_i_pp, s_m_sim_sda_i_ppp, s_m_sim_sda_i_pppp, s_m_sim_sda_i_ppppp: std_logic;  

 
 signal s_TLU_TRG_cnt: std_logic_vector(15 downto 0):= (others => '0');
 
 signal s_transmit_fifo_empty: std_logic := '0'; 
 signal s_transmit_fifo_rd: std_logic := '0'; 
 signal s_transmit_fifo_q:  std_logic_vector(31 downto 0):= (others => '0'); 
 signal s_from_8b10b:  std_logic_vector(9 downto 0):= (others => '0'); 

 signal s_Kchar_SIN, s_Kchar_SIN1, s_Kchar : std_logic_vector(0 downto 0):= (others => '0');
 signal s_transm_sm_tp:std_logic_vector(7 downto 0):= (others => '0');
 signal s_sout, s_sout1, s_sout_test, s_sin, s_sin_copy: std_logic := '0'; 
 signal s_sout_h, s_sout_l: std_logic := '0'; 
 signal s_sin1, s_sin1_copy, s_SIN_TP, s_SIN_TPP: std_logic := '0';
  
 signal periphery_TP,s_TP_decode: std_logic_vector(7 downto 0);
 
 signal s_transm_tp,s_frame_40_pedge: std_logic := '0'; 
 
-- signal s_sin_to_casc_idelay, s_sin_idelay, s_sin1_idelay,s_sin1_to_casc_idelay: std_logic;
-- signal s_from_deser, s_from_deser1: std_logic_vector(9 downto 0):= (others => '0'); 
-- signal s_sin_h, s_sin1_h, s_sin_l, s_sin1_l: std_logic;
-- signal s_deser_in, s_deser1_in: std_logic_vector(9 downto 0):= (others => '0'); 
 
-- signal s_decode_error, s_decode_error1, s_rdisp, s_rdisp1 : std_logic;
-- signal s_decode_KCHAR_out, s_decode_KCHAR1_out: std_logic_vector(0 downto 0);
-- signal s_KCHAR_UDP, s_KCHAR1_UDP: std_logic;
-- signal s_decode_out : std_logic_vector(7 downto 0);
-- signal s_decode1_out : std_logic_vector(7 downto 0);
-- signal s_rdisp_err, s_rdisp_err1, s_code_err, s_code_err1: std_logic;
-- signal s_decode_rd_err_out, s_decode_rd_err1_out, s_code_err_KCHAR_out, s_code_err_KCHAR1_out: std_logic_vector(0 downto 0);
 signal s_TPdecode, s_TPdecode_1: std_logic;
 signal s_code_err_reg, s_code_err1_reg: std_logic := '0'; 
 
 signal s_2bc, s_2bc1: std_logic_vector(1 downto 0);
 signal s_2bc_we, s_2bc1_we: std_logic := '0'; 
 signal decoded_word, decoded1_word,s_decode_fifo_dout,s_decode1_fifo_dout: std_logic_vector(31 downto 0);
 signal s_decode_fifo_empty, s_decode1_fifo_empty, s_decode_fifo_empty_p, s_decode1_fifo_empty_p, s_test_or: std_logic := '0'; 
 signal s_to8b10b_reg: std_logic_vector(7 downto 0); 
 
 signal s_USRCLK, s_USRCLK_gbuf: std_logic;
 signal glbl_rst, gpio_pb_left: std_logic;
 signal s_start_transmit, s_start_transmit_pb, s_start_transmit_af: std_logic := '0'; 
 signal s_mac_tx_clk, s_mac_rx_clk: std_logic; 
 signal s_gbe_status_vector: std_logic_vector(19 downto 0);
 signal s_GBE_tw_tp_out1, s_GBE_tw_tp_out2: std_logic; 
 signal s_GBE_TP: std_logic_vector(7 downto 0);
 
 signal s_IDELAY_LD, s_IDELAY1_LD, s_UDP_FIFO_reset: std_logic;
 signal s_CNTVALIN, s_CNTVALIN1: std_logic_vector(4 downto 0);
 signal s_BITSLIP, S_BITSLIP1: std_logic_vector(2 downto 0);
 
 signal s_read_base, s_full_base, s_empty_base, s_prog_full_base: std_logic := '0';
 signal s_not_allow_read_base, s_not_allow_read_piggy: std_logic := '0';
 signal s_read_piggy, s_full_piggy, s_empty_piggy, s_prog_full_piggy: std_logic := '0';
 signal s_data_base, s_data_piggy, s_GBEdata_piggy, s_GBEdata_base : std_logic_vector(31 DOWNTO 0);
 signal s_write_data_count_UDPfifo: std_logic_vector(13 DOWNTO 0);
 
 signal s_decode_out_UDP, s_decode1_out_UDP, s_UDP_fifo_data, s_UDP_fifo1_data: std_logic_vector(31 DOWNTO 0);
 signal s_UDP_fifo_we, s_UDP_fifo1_we, s_we_UDP, s_we1_UDP: std_logic;
 
 signal s_SER_OUT_in, r_SER_OUT_in,s_SER_OUT_in_p, r_SHIFT_IN_PROGR_in, s_SHIFT_IN_PROGR_in, s_SHIFT_IN_PROGR_in_p : std_logic;

 signal s_AXI_straem1_empty, s_AXI_straem1_empty_tp, s_tlast_stream1: std_logic := '0';
 signal s_AXI_straem_empty, s_AXI_straem_empty_tp, s_tlast_stream: std_logic := '0';
 signal s_fifo_tlast_piggy, s_fifo_tlast_base : std_logic := '0';
 signal s_CDF_in, s_CDF1_out, s_CDF_out: std_logic_vector(31 DOWNTO 0);
 signal s_frame64,s_prog_almost_full: std_logic;
 signal s_TWTP1, s_TWTP2: std_logic := '0';
 
 signal   s_reg_a_in, s_reg_a_out : STD_LOGIC_VECTOR ( 31 downto 0 );
 signal   s_reg_b_in, s_reg_b_out : STD_LOGIC_VECTOR ( 31 downto 0 );
 signal   s_reg_c_in, s_reg_c_out : STD_LOGIC_VECTOR ( 31 downto 0 );
 signal   s_reg_d_in, s_reg_d_out : STD_LOGIC_VECTOR ( 31 downto 0 );
 signal   s_reg_e_in, s_reg_e_out : STD_LOGIC_VECTOR ( 31 downto 0 );
 signal   s_reg_f_in, s_reg_f_out : STD_LOGIC_VECTOR ( 31 downto 0 );
 signal   s_reg_g_in, s_reg_g_out : STD_LOGIC_VECTOR ( 31 downto 0 );
 signal   s_reg_h_in, s_reg_h_out : STD_LOGIC_VECTOR ( 31 downto 0 );
 
 signal  s_EXT_RST_N, s_EXT_AUX_RST_N, s_TX_FIFO_RD_N_EXT : std_logic := '1';
 signal s_INIT_TS_EXT,s_INIT_TS_EXT_bar, s_TS_OVFL, s_TS_OVFL_p, s_EOC_READ_EXT, s_CU_RQ_DA_EXT, s_CU_RD_EXT,s_INIT_TS_EXT_del : std_logic := '0';
 
 signal s_TS_ovfl_cnt: STD_LOGIC_VECTOR ( 47 downto 0 );
 
 signal s_globalTS: STD_LOGIC_VECTOR ( 63 downto 0 );
 signal s_incr_glTScnt: std_logic := '0';
 signal s_axi_stream_full: std_logic := '0';
 
 signal s_s_clk_TLU_pll_gbuf_half: std_logic;
 signal s_clk_TLU_pll_640_half: std_logic;	 
 signal s_640MHz_scaler: STD_LOGIC_VECTOR ( 3 downto 0 ); 
 signal s_40MHz_scaler: STD_LOGIC_VECTOR ( 3 downto 0 );  
 
 signal s_TLU_TRG_pedge, s_TLU_TRG_stretched,s_TLU_TRG_stretched_p, s_TLU_CLK_pedge_nedge, s_p, s_n, s_reset_TS: std_logic := '0';
 signal s_Eventnumber: STD_LOGIC_VECTOR ( 15 downto 0 );  
 signal s_Eventnumber_ready, s_Eventnumber_valid, s_eventnumber_valid_p: std_logic := '0'; 
 signal s_SIN_reset: std_logic := '0';
 
 signal s_TS_test_INJ_pulse, s_TS_test_INJ_pulse_gate ,s_inj_out,s_inj_out_pedge : std_logic := '0';
    
 signal s_allow_read_base, s_allow_read_piggy,s_rd_base,s_rd_piggy: std_logic := '0';
 
 signal s_send_UDP_active: std_logic;
 signal s_incr_TLUcounter : std_logic := '0';
 signal tluCounterVector: STD_LOGIC_VECTOR ( 45 downto 0 ); 
  --------------------------------------------------------------------------------------------------------
   
begin
caribou_top_i: component caribou_top
     port map (
     
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      
      
      axi_clk => axi_clk,
      FCLK_CLK1_OUT => s_FCLK_CLK1_OUT,
        
--      led(3 downto 0) => led(3 downto 0),
      
      ctrl_reg_out(31 downto 0) => s_control_out(31 downto 0),
      ctrl1_reg_out(31 downto 0) => s_control1_out(31 downto 0),
      ctrl1_we => s_ctrl1_we,
      ctrl2_reg_out(31 downto 0) => s_control2_out(31 downto 0),
      ctrl3_reg_out(31 downto 0) => s_control3_out(31 downto 0),
      ctrl3_we => s_ctrl3_we,
      ctrl14_reg_out(31 downto 0) => s_ctrl14_reg_out(31 downto 0),
      
      status0_0_in(31 downto 0) => s_status0_0_in(31 downto 0),
      status0_1_in(31 downto 0) => s_status0_1_in(31 downto 0),
      status1_0_in(31 downto 0) => s_status1_0_in(31 downto 0),
      status1_1_in(31 downto 0) => s_status1_1_in(31 downto 0),
      status2_0_in(31 downto 0) => s_status2_0_in(31 downto 0),
      status2_1_in(31 downto 0) => s_status2_1_in(31 downto 0),
      status3_0_in(31 downto 0) => s_status3_0_in(31 downto 0),
      status3_1_in(31 downto 0) => s_status3_1_in(31 downto 0),
      
      reg_a_in_0  => x"ea13ea13", --s_reg_a_in,
      reg_a_out_0 => s_reg_a_out,
      reg_b_in_0  => s_reg_b_in,
      reg_b_out_0 => s_reg_b_out,
      reg_c_in_0  => s_reg_c_in,
      reg_c_out_0 => s_reg_c_out,
      reg_d_in_0  => s_reg_d_in,
      reg_d_out_0 => s_reg_d_out,
      reg_e_in_0  => s_reg_e_in,
      reg_e_out_0 => s_reg_e_out,
      reg_f_in_0  => s_reg_f_in,
      reg_f_out_0 => s_reg_f_out,
      reg_g_in_0  => s_reg_g_in,
      reg_g_out_0 => s_reg_g_out,
      reg_h_in_0  => s_reg_h_in,
      reg_h_out_0 => s_reg_h_out,
       
      FIFO_Data(31 downto 0) => tdata(31 downto 0),
      FIFO_tlast => tlast,
      FIFO_tready => s_FIFO_tready,
      FIFO_tvalid => tvalid,
      
      FIFO1_Data => fifo1_tdata(31 downto 0),
      FIFO1_tlast => fifo1_tlast,
      FIFO1_Tready => s_FIFO1_tready,
      FIFO1_tvalid => fifo1_tvalid,
      
      scl_i => s_scl_i,
      scl_o => s_scl_o,
      scl_t => s_scl_t,
      sda_i => s_sda_i,
      sda_o => s_sda_o,
      sda_t => s_sda_t,
      
      sim_scl_i => s_m_sim_scl_i,
      sim_scl_o => s_m_sim_scl_o,
      sim_scl_t => s_m_sim_scl_t,
      sim_sda_i => s_m_sim_sda_i,
      sim_sda_o => s_m_sim_sda_o,
      sim_sda_t  => s_m_sim_sda_t
    );
    
    s_reg_b_in  <= x"0000000" & dip_switches_4bits_tri_i;
    
    --begin --------------------------------CONTROL REGISTER PULSE SHAPING ------------------------------------------------------------------------------
    control_register_rising_edge_detector : process(axi_clk)
    begin if(rising_edge(axi_clk)) then s_control_out_p <= s_control_out; s_control_out_pp <= s_control_out_p; end if; end process; 
    s_control_out_pulse  <= not s_control_out_pp and s_control_out_p;
    ------------------------------------------------------------------------------------
    control1_register_rising_edge_detector : process(axi_clk)
    begin if(rising_edge(axi_clk)) then s_control1_out_p <= s_control1_out; s_control1_out_pp <= s_control1_out_p; end if; end process;
    s_control1_out_pulse  <= not s_control1_out_pp and s_control1_out_p;
    ------------------------------------------------------------------------------------
    control2_register_rising_edge_detector : process(axi_clk)
    begin if(rising_edge(axi_clk)) then s_control2_out_p <= s_control2_out; s_control2_out_pp <= s_control2_out_p; end if; end process;
    s_control2_out_pulse  <= not s_control2_out_pp and s_control2_out_p;
    ------------------------------------------------------------------------------------   
    control3_register_rising_edge_detector : process(axi_clk)
    begin if(rising_edge(axi_clk)) then s_control3_out_p <= s_control3_out; s_control3_out_pp <= s_control3_out_p; end if; end process;
    s_control3_out_pulse  <= not s_control3_out_pp and s_control3_out_p;
    ------------------------------------------------------------------------------------          
    delay_ctrl_we : process(axi_clk)
    begin
      if(rising_edge(axi_clk)) then 
        s_ctrl1_we_p <= s_ctrl1_we; s_ctrl1_we_pp <= s_ctrl1_we_p;
        s_ctrl3_we_p <= s_ctrl3_we; s_ctrl3_we_pp <= s_ctrl3_we_p;  
      end if;
    end process;    
    --end --------------------------------CONTROL REGISTER PULSE SHAPING ------------------------------------------------------------------------------    
    
    IDELAYCTRL_inst : IDELAYCTRL port map ( RDY => open, REFCLK => s_CLKOUT0, RST => s_not_locked );
 
    
    
    
    --- SFP_GBE --- --- SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ---
    --- SFP_GBE --- --- SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ---
 
 
    glbl_rst <= gpio_sws_3bits_tri_i(1);
    gpio_pb_left <= gpio_sws_3bits_tri_i(0);
    
 IBUFDS_inst : IBUFDS
 port map ( O => s_USRCLK, I => USRCLK_P, IB => USRCLK_N );
 BUFG_inst_clk_2 : BUFG port map ( O => s_USRCLK_gbuf, I => s_USRCLK );

     
--    process(s_clk_TLU_pll_par)  ---pedge gpio_pb_left ---------------------------------------------------------------
--      variable pipe: std_logic_vector(1 to 2);
--      begin
--        if ( rising_edge(s_clk_TLU_pll_par) ) then  s_start_transmit_pb <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:= gpio_pb_left & pipe(1) ; end if;       
--    end process;
    

   -- s_prog_almost_full <= s_prog_full_base or s_prog_full_piggy;
   s_prog_almost_full <= (s_prog_full_base or s_prog_full_piggy) when (dip_switches_4bits_tri_i(1)='1') else s_prog_full_base;
   
    process(s_clk_TLU_pll_par)  ---pedge UDP_FIFO_base almost full---------------------------------------  darf nicht restarten solange UDP packe transferiert wird !!!!!!!!!!!!!!!!!! muss noch ge�ndert werden wer zuerst almost full hat piggy oder base
      variable pipe: std_logic_vector(1 to 2);
      begin
        if ( rising_edge(s_clk_TLU_pll_par) ) then  s_start_transmit_af <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:= s_prog_almost_full & pipe(1) ; end if;       
    end process;
  ------------------------------------------------------------------------------------------------------
   s_start_transmit <= (s_start_transmit_af and (not(s_send_UDP_active))) or s_control2_out_pulse(21); -- push UDP package
   

    

    GBE_inst: GBE_SFP
  Port map(
    gtrefclk_p =>  MGTREFCLK1P,
    gtrefclk_n =>  MGTREFCLK1N,
    
    clk_200MHz_in => s_clk_gbuf,
    
    glbl_rst => glbl_rst,
    transmit_start => s_start_transmit,
    data_taking_enabled =>s_control_out(0), 
    
    global_TS => s_globalTS(63 downto 0),
    
    IP_addr_2LSBs => dip_switches_4bits_tri_i(3 downto 2),
    IP_addr_28MSBs => s_control3_out(27 downto 0),
    piggy_mounted => dip_switches_4bits_tri_i(1),
    empty_base_in => s_not_allow_read_base,--s_empty_base,
	empty_piggy_in => s_not_allow_read_piggy, --s_empty_piggy,
    
    mac_tx_clock => s_mac_tx_clk,
    read_ack_base => s_read_base,
    read_ack_piggy => s_read_piggy,
    data_base => s_GBEdata_base(31 downto 0),--s_data_base(31 downto 0),
    data_piggy => s_GBEdata_piggy(31 downto 0),--s_data_piggy(31 downto 0),

    mac_rx_clock => s_mac_rx_clk,
    
    send_UDP_active => s_send_UDP_active,
     
    txp  => txp,                             -- Differential +ve of serial transmission from PMA to PMD.
    txn  => txn,                             -- Differential -ve of serial transmission from PMA to PMD.
    rxp  => rxp,                             -- Differential +ve for serial reception from PMD to PMA.
    rxn  => rxn,                             -- Differential -ve for serial reception from PMD to PMA.
    
    status_vector_out => s_gbe_status_vector(19 downto 0),
    GBE_tw_tp_out1 => s_GBE_tw_tp_out1,
    GBE_tw_tp_out2 => s_GBE_tw_tp_out2,
    GBE_TP_out => s_GBE_TP
  );

 --- SFP_GBE --- --- SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ---
 --- SFP_GBE --- --- SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ------ SFP_GBE ---
 
 
 
 
 
 
 
    
    --LVDS CLOCK INPUT BUFFERS, GLOBAL BUFFERS and PLLs:
    -------------------------------------------------------------------------------------------------------------------
    BUFDS_inst_clk_main : IBUFDS generic map ( DIFF_TERM => FALSE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_in_clk, I => clk_p, IB => clk_n );
    BUFG_inst_clk_main : BUFG port map ( O => s_clk_gbuf, I => s_in_clk );
    PLL_clk_main: clk_wiz_0  port map ( clk_in1 => s_clk_gbuf, clk_out1 => s_CLKOUT0, clk_out2 => s_clk_20MHz, clk_out3 => s_clk_100MHz, clk_out4 => s_clk_40MHz, reset => gpio_sws_3bits_tri_i(1), locked => s_locked );
   --//----------------------------------------------------------------------------
   --//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
   --//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
   --//----------------------------------------------------------------------------
   --// clk_out1___200.000______0.000______50.0_______98.146_____89.971
   --// clk_out2____20.000______0.000______50.0______155.330_____89.971
   --// clk_out3___100.000______0.000______50.0______112.316_____89.971
   --// clk_out4____40.000______0.000______50.0______135.255_____89.971
    s_not_locked <= not s_locked;
    process(axi_clk) --------pedge s_locked --------- 
    variable pipe: std_logic_vector(1 to 2);
    begin
      if ( rising_edge(axi_clk) ) then  s_locked_reset <= (pipe(1) xor pipe(2))  and  ( not pipe(2));  pipe:=  s_locked & pipe(1); end if;       
    end process;  
  
   ----------------------------------------------------------------------------------------------------------- 
    BUFDS_inst_SI5345_CARboard : IBUFDS generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_in_clk_SI5345_CARboard, I => SI5345_CLK_OUT8_clk_p, IB => SI5345_CLK_OUT8_clk_n );
    ------------------------------------------------------------------------------------
    
                                                                                                        -- only available when R459 R460 mounted !!!!!!!!!!
    BUFG_inst_TLU_clk : BUFG port map ( O => s_TLU_clk_gbuf, I => s_in_clk_SI5345_CARboard ); 
    
    
    --//----------------------------------------------------------------------------
    --//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
    --//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
    --//----------------------------------------------------------------------------
    --// clk_out1____40.000______0.000______50.0______169.880____154.081
    --// clk_out2___640.000______0.000______50.0______110.703____154.081
    --// clk_out3____64.000______0.000______50.0______154.323____154.081
    --// clk_out4___320.000______0.000______50.0______121.907____154.081
    --// clk_out5___320.000____180.000______50.0______121.907____154.081 
    
--    TLU_CLK_PLL_inst: PLL_20MHz_to_320MHz port map ( clk_in1 => s_TLU_clk_gbuf, clk_in2 => s_clk_20MHz, clk_in_sel => dip_switches_4bits_tri_i(0), -- switch between TLU clock and 40Mhz Board Clock
--                                           clk_out1 => s_clk_TLU_pll_40,  -- 20MHz 
--                                           clk_out2 => s_clk_TLU_pll_640, --320MHz
--                                           clk_out3 => s_clk_TLU_pll_64,  -- 32MHz 
--                                           clk_out4 => s_clk_TLU_pll_320, --160MHz
--                                           clk_out5 => s_clk_TLU_pll_160, --80MHz
--                                           clk_out6 => s_frame64, reset => gpio_sws_3bits_tri_i(1), locked => s_locked1 );
    TLU_CLK_PLL_inst: PLL_40MHz_to_640MHz port map ( clk_in1 => s_TLU_clk_gbuf, clk_in2 => s_clk_40MHz, clk_in_sel => dip_switches_4bits_tri_i(0), -- switch between TLU clock and 40Mhz Board Clock
                                           clk_out1 => s_clk_TLU_pll_40, 
                                           clk_out2 => s_clk_TLU_pll_640,
                                           clk_out3 => s_clk_TLU_pll_64,   
                                           clk_out4 => s_clk_TLU_pll_320,
                                           clk_out5 => s_clk_TLU_pll_160,
                                           clk_out6 => s_frame64, reset => gpio_sws_3bits_tri_i(1), locked => s_locked1 );
    BUFG_inst_TLU_clk_1 : BUFG port map ( O => s_clk_TLU_pll_gbuf, I => s_clk_TLU_pll_40 );
    BUFG_inst_TLU_clk_2 : BUFG port map ( O => s_clk_TLU_pll_ser, I => s_clk_TLU_pll_640 );
    BUFG_inst_TLU_clk_3 : BUFG port map ( O => s_clk_TLU_pll_par, I =>  s_clk_TLU_pll_64 );
    BUFG_inst_TLU_clk_4 : BUFG port map ( O => s_clk_TLU_pll_parx5, I =>  s_clk_TLU_pll_320 );
    BUFG_inst_TLU_clk_5 : BUFG port map ( O => s_clk_TLU_pll_parx2p5, I =>  s_clk_TLU_pll_160 );
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   
   
  process (s_user_sma_clk_bufg) 
   begin
    if ( rising_edge(s_user_sma_clk_bufg) ) then  s_640MHz_scaler <= s_640MHz_scaler + 1; end if;
  end process;
  
    
    
    
    --LVDS CLOCK OUTPUT BUFFERS:
    OBUFDS_inst_FMC_REF_CLK_out_to_SI5345_IN0 : OBUFDS generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST") port map ( O => FMC_REF_CLK_P, OB => FMC_REF_CLK_N, I => s_clk_TLU_pll_gbuf);--s_clk_gbuf );
    OBUFDS_inst_FMC_LVDS4_E29_E30_ChipBoard :   OBUFDS generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST") port map ( O => FMC_LVDS4_P,   OB => FMC_LVDS4_N,  I => s_640MHz_scaler(3));-- I => s_clk_TLU_pll_gbuf);--40MHz to ChipBoard
    OBUFDS_inst_FMC_LVDS5_F28_F29_ChipBoard :   OBUFDS generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST") port map ( O => FMC_LVDS5_P, OB => FMC_LVDS5_N,    I => s_user_sma_clk_bufg);-- I => s_clk_TLU_pll_640);--640MHz to ChipBoard
    ----------------------------------------------------------------------------------------------------------------


  -- IIC IO BUFFERS --  -- IIC -- -- IIC -- -- IIC -- -- IIC -- -- IIC -- -- IIC -- -- IIC -- -- IIC -- -- IIC -- -- IIC -- 
  IOBUF_inst_scl : IOBUF generic map ( DRIVE => 8, IOSTANDARD => "DEFAULT", SLEW => "SLOW") port map ( O => s_scl_i, IO => IIC_SCL_MAIN_LS, I => s_scl_o, T => s_scl_t );
  IOBUF_inst_sda : IOBUF generic map ( DRIVE => 8, IOSTANDARD => "DEFAULT", SLEW => "SLOW") port map ( O => s_sda_i, IO => IIC_SDA_MAIN_LS, I => s_sda_o, T => s_sda_t );
  --------------------------------------------------------------------------------------------------------------    
  --------------------------------------------------------------------------------------------------------------
  IOBUF_inst_sim_scl_o : IOBUF generic map ( DRIVE => 8, IOSTANDARD => "DEFAULT", SLEW => "SLOW") port map ( O => s_m_sim_scl_i, IO => FMC_LPC_LA27_P, I => s_m_sim_scl_o, T => s_m_sim_scl_t ); -- from PS I2C Master
  IOBUF_inst_sim_sda_o : IOBUF generic map ( DRIVE => 8, IOSTANDARD => "DEFAULT", SLEW => "SLOW") port map ( O => s_m_sim_sda_i, IO => FMC_LPC_LA27_N, I => s_m_sim_sda_o, T => s_m_sim_sda_t ); 
  -----------------------------------------------------------------------------------------------------------------
  --IBUF_sim_scl_i :        IBUF generic map (IBUF_LOW_PWR => TRUE, IOSTANDARD => "DEFAULT")        port map (O => s_sim_scl_i,  I => PMOD1_7_LS    );    -- Buffer input (connect directly to top-level port)
  --IOBUF_inst_sim_sda_i : IOBUF generic map ( DRIVE => 8, IOSTANDARD => "DEFAULT", SLEW => "SLOW") port map (O => s_sim_sda_i, IO => PMOD1_3_LS, I => '0', T => s_sim_sda_t ); -- T = '1'  => INPUT 
  --------------------------------------------------------------------------------------------------------------    
  --------------------------------------------------------------------------------------------------------------

  --PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP old BUFFERs for MPW1: PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP  
  --  -- OUTPUTS:
  --OBUFDS_inst_SELCONFREAD : OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_LVDS9_P, OB => FMC_LVDS9_N, I => s_control_out(25) ); 
  --OBUFDS_inst_SERCLK :      OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_LVDS3_P, OB => FMC_LVDS3_N, I => axi_clk); --s_control_out(27) ); 
  --OBUFDS_inst_SERIN :       OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_LVDS6_P, OB => FMC_LVDS6_N, I => s_control_out_pulse(28) );
  --OBUFDS_inst_GLOBENCOUNT : OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_LVDS8_P, OB => FMC_LVDS8_N, I => s_control_out(29) ); 
  
  s_EXT_RST_N <= (not(s_control_out(30)));
  s_EXT_AUX_RST_N <= (not(s_control_out(31)));
  --s_INIT_TS_EXT <= ((s_control_out(28)) or s_TLU_CONT); 
  s_INIT_TS_EXT <= ((s_control_out(28)) or s_TSini_stretched); ---- AIDA Mode ---- TLU_CONT stretched to 50ns
  
  OBUFDS_inst_EXT_RST_N :        OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_LVDS11_P, OB => FMC_LVDS11_N, I => s_EXT_RST_N );--s_control_out(30) ); 
  OBUFDS_inst_EXT_AUX_RST_N :    OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_LVDS10_P, OB => FMC_LVDS10_N, I => s_EXT_AUX_RST_N );--s_control_out(30) ); 
  
 -- OBUFDS_inst_INIT_TS_EXT :      OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_HPC_DP4_C2M_P, OB => FMC_HPC_DP4_C2M_N, I => s_EXT_AUX_RST_N );--s_control_out(30) ); 
   
  s_AMUX_INIT <=(s_control_out(5));
  s_AMUX_CLK <= (s_control_out(6));
  s_AMUX_PWR <= (s_control_out(7));
  s_AMUX_CLK_bar <= not(s_AMUX_CLK);
  OBUFDS_inst_AMUX_INIT :    OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "SLOW")   port map ( O => FMC_CMOS_IN6_DIF_P, OB => FMC_CMOS_IN6_DIF_N, I => s_AMUX_INIT );
  --OBUFDS_inst_AMUX_CLK :   OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "SLOW")   port map ( O => FMC_CMOS_IN7_DIF_P, OB => FMC_CMOS_IN7_DIF_N, I => s_AMUX_CLK );
   OBUF_inst_AMUX_CLK_P : OBUF
 generic map (
 DRIVE => 4,
 IOSTANDARD => "DEFAULT",
 SLEW => "SLOW")
 port map (
 O => FMC_CMOS_IN7_DIF_P, I => s_AMUX_CLK );
   OBUF_inst_AMUX_CLK_N : OBUF generic map ( DRIVE => 4, IOSTANDARD => "DEFAULT", SLEW => "SLOW") port map ( O => FMC_CMOS_IN7_DIF_N, I => s_AMUX_CLK_bar );
  
  
  OBUFDS_inst_AMUX_PWR :   OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "SLOW")   port map ( O => FMC_CMOS_IN8_DIF_P, OB => FMC_CMOS_IN8_DIF_N, I => s_AMUX_PWR );
  
      s_EOC_READ_EXT <= '0';--(s_control_out(8));
      s_CU_RQ_DA_EXT <= '0';--(s_control_out(9));
  s_TX_FIFO_RD_N_EXT <= '1';--(s_control_out(10));
         s_CU_RD_EXT <= '0';--(s_control_out(11));
  OBUFDS_inst_EOC_READ_EXT :    OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "SLOW")   port map ( O => FMC_CMOS_IN1_DIF_P, OB => FMC_CMOS_IN1_DIF_N, I => s_EOC_READ_EXT );
  OBUFDS_inst_CU_RQ_DA_EXT :   OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "SLOW")   port map ( O => FMC_CMOS_IN2_DIF_P, OB => FMC_CMOS_IN2_DIF_N, I => s_CU_RQ_DA_EXT );
  OBUFDS_inst_TX_FIFO_RD_N_EXT :   OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "SLOW")   port map ( O => FMC_CMOS_IN3_DIF_P, OB => FMC_CMOS_IN3_DIF_N, I => s_TX_FIFO_RD_N_EXT );
  OBUFDS_inst_CU_RD_EXT :   OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "SLOW")   port map ( O => FMC_CMOS_IN4_DIF_P, OB => FMC_CMOS_IN4_DIF_N, I => s_CU_RD_EXT );
  
  
  
  
  
  
  
  
  
  
  
  
      
  --INPUTS:
  
  IBUFDS_inst_SER_OUT_in: IBUFDS generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => r_SER_OUT_in, I => FMC_LVDS1_P, IB => FMC_LVDS1_N );
  IBUFDS_inst_SHIFT_IN_PROGR_in: IBUFDS generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => r_SHIFT_IN_PROGR_in, I => FMC_LVDS3_P, IB => FMC_LVDS3_N );
     
  --IBUFDS_inst_PAD_SOUT_PC_in : IBUFDS generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_PAD_SOUT_PC_input, I => FMC_CMOS_OUT10_DIF_P, IB => FMC_CMOS_OUT10_DIF_N );
  ----------------------------------------------------------------------------------------------------------------------------------
   process (s_clk_TLU_pll_gbuf) -- neg_edge_register
   begin 
      if (s_clk_TLU_pll_gbuf'event and s_clk_TLU_pll_gbuf = '0') then
        s_SER_OUT_in <= r_SER_OUT_in;
        s_SHIFT_IN_PROGR_in <= r_SHIFT_IN_PROGR_in;
      end if;
   end process;
  
  process (s_clk_TLU_pll_gbuf) -- delay ser_out
	begin
	  if (rising_edge(s_clk_TLU_pll_gbuf)) then
	   s_SER_OUT_in_p <= s_SER_OUT_in;
	   s_SHIFT_IN_PROGR_in_p <= s_SHIFT_IN_PROGR_in;
	  end if;
	end process; 
  --process (s_control_out(2)) --128 bit SOUT_PC shiftregister ---------------------------------------------------
  process (s_clk_TLU_pll_gbuf)
	begin
	  if (rising_edge(s_clk_TLU_pll_gbuf)) then
	    if (s_SHIFT_IN_PROGR_in_p='1') then
          s_SOUT_PC_sr(127 downto 1) <= s_SOUT_PC_sr(126 downto 0); s_SOUT_PC_sr(0) <= s_SER_OUT_in;  -- Load new data into the first stage
        end if;
	  end if;
	end process; 
	
  ----------------------------------------------------------------------------------------------------------------------------------
  readback_mux_PC: process (s_control1_out(8 downto 4)) is --------;
  begin  -- process muxing
    case (s_control1_out(8 downto 4)) is
        when "00000" => s_status0_1_in(31 downto 0) <= s_SOUT_PC_sr(127 downto 96);
        when "00001" => s_status0_1_in(31 downto 0) <= s_SOUT_PC_sr(95 downto 64);
        when "00010" => s_status0_1_in(31 downto 0) <= s_SOUT_PC_sr(63 downto 32);
        when "00011" => s_status0_1_in(31 downto 0) <= s_SOUT_PC_sr(31 downto 0);
        when others => s_status0_1_in <= x"00000000";
    end case; 
  end process readback_mux_PC; 






--  IBUFDS_inst_PAD_SEROUT_in  : IBUFDS generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_PAD_SEROUT_input, I => FMC_CMOS_OUT13_DIF_P, IB => FMC_CMOS_OUT13_DIF_N );
 
--  shutter_TOT_counter_inst: shutter_TOT_counter
--   port map (
--                    axi_clk => axi_clk, 
--                    clk_200 => s_CLKOUT0,
--                   reset_in => s_control2_out_pulse(31),
                      
--           SFOUTBUFF_COMP_in => s_SFOUTBUFF_COMP_input,
--              shutter_val_in => s_ctrl14_reg_out(31 downto 0),
--            start_shutter_in => s_control_out_pulse(17),
--                   shutter_o => s_shutter,
--     SFOUTBUFF_COMP_pedge_o => s_SFOUTBUFF_COMP_pedge,
--        shutter_or_TLUcont_o => s_status1_0_in(0),
                    
--     counter_async_shutter_o => s_status1_1_in(15 downto 0),
--         counter200MHz_TOT_o => s_status1_1_in(31 downto 16), --new ????????????????????????????????
--                  TLU_BSY_in => s_TLU_BSY_out,
--                 TLU_CONT_in => s_TLU_CONT_in, 
--                 TLU_CONTen_o => s_TLU_CONT_en
--          );

  
  BUFDS_inst_TS_OVFL : IBUFDS  generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_TS_OVFL, I => FMC_LVDS17_P, IB => FMC_LVDS17_N ); 
  
       
  --PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP     
  -- OUTPUTS:
  
   
  --INPUTS:
  
  --BUFDS_inst_PAD_SOUT2 : IBUFDS generic map ( DIFF_TERM => FALSE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_PAD_SOUT2, I => FMC_LVDS10_P, IB => FMC_LVDS10_N );
  BUFDS_inst_PAD_SOUT_FE : IBUFDS  generic map ( DIFF_TERM => FALSE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_PAD_SOUT_FE, I => FMC_CMOS_OUT12_DIF_P, IB => FMC_CMOS_OUT12_DIF_N );
  BUFDS_inst_PAD_PAREN_FE: IBUFDS  generic map ( DIFF_TERM => FALSE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_PAD_PAREN_FE, I => FMC_CMOS_OUT14_DIF_P, IB => FMC_CMOS_OUT14_DIF_N );
        
  --FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF 

  --begin---------------    INJ Pulse----------------------------------------------------------------------

  s_inj_out <=  s_inj_puls or ( s_TS_test_INJ_pulse and s_reg_h_out(0)) ;
  OBUFDS_inst_INJ_CTRL1: OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_INJ_CTRL1_DIF_P, OB => FMC_INJ_CTRL1_DIF_N, I => s_inj_out );
  --OBUFDS_inst_INJ_CTRL2: OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_INJ_CTRL2_DIF_P, OB => FMC_INJ_CTRL2_DIF_N, I => s_inj_out );  -- for TLU Trigger
  process(axi_clk) --------pedge s_control_out(16) --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(axi_clk) ) then  
      s_inj <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_control_out(16) & pipe(1); 
    end if;       
  end process;

  process (axi_clk) --shift registers
  begin
    if ( rising_edge(axi_clk) ) then  
      for i in 0 to 510 loop
        s_inj_tmp(i+1) <= s_inj_tmp(i);
      end loop;
      s_inj_tmp(0) <= s_inj;
    end if;
   end process;
 
   process (axi_clk)--sr FF
   begin
     if ( rising_edge(axi_clk) ) then  
       if ( s_inj_tmp(500)='1') then s_inj_puls <= '0'; elsif (s_inj = '1') then s_inj_puls <= '1'; end if;
     end if;
   end process;
 
 --end----------------- INJ Pulse----------------------------------------------------------------------
 





   
  --begin - ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- 
  
  BUFDS_inst_ADC_DCO2 : IBUFDS  generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_FMC_ADC_DCO2, I => FMC_ADC_DCO2_P, IB => FMC_ADC_DCO2_N );
  BUFDS_inst_ADC_FCO2 : IBUFDS  generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_FMC_ADC_FCO2, I => FMC_ADC_FCO2_P, IB => FMC_ADC_FCO2_N );
  
  BUFDS_inst_ADC_H2 : IBUFDS  generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_FMC_ADC_OUT_H2, I => FMC_ADC_OUT_H2_P(0), IB => FMC_ADC_OUT_H2_N(0) );
  BUFDS_inst_ADC_G2 : IBUFDS  generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS") port map ( O => s_FMC_ADC_OUT_G2, I => FMC_ADC_OUT_G2_P, IB => FMC_ADC_OUT_G2_N );
 
  PLL2_inst: clk_div  port map ( clk_in1 => s_FMC_ADC_DCO2, clk_out1 => s_DCO2_bufg,  clk_out2 => s_DCO2_bufg_inv,  clk_out3 => s_clk_div_bufg, reset => gpio_sws_3bits_tri_i(1));
   
--  ADC9249_inst1: ADC9249
--   port map (
--	       IDEL_refclk => s_CLKOUT0,
--           IDEL_CTRL_rst => s_not_locked,
--           IDEL_ld => s_control2_out_pulse(29),
--           IDEL_cntvalin_ADC1 => s_control2_out(20 downto 16),
--           IDEL_cntvalin_ADC2 => s_control2_out(15 downto 11),
           
--           ADC1_SERIN => s_FMC_ADC_OUT_H2,
--           ADC2_SERIN => s_FMC_ADC_OUT_G2,
--           ADC_FCO => s_FMC_ADC_FCO2,
--           ADC_DCO => s_FMC_ADC_DCO2,
           
--           axi_clk => axi_clk,
--           Trigger_FIFOwe_stop_in => s_TLU_trg_tag_axi_we,   --for trigger history fifo
--                  FIFOwe_start_in => s_wbc_rbc_set,
--           tlu_TRG_tag_in => s_TLU_trg_tag(3 downto 0 ),
           
--           tdata_ADC_FIFO_out => tdata(31 DOWNTO 0),
--           tvalid_ADC_FIFO_out => tvalid,
--           tlast_ADC_FIFO_out => tlast
--          );
 --end ----  ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 --- ADC9249 ---
 
   
   
   
   
   
 

 
 
 --begin--TLU---------TLU---------TLU---------TLU---------TLU---------TLU---------
 --dip_switches_4bits_tri_i(0) TLU used
 
 s_IBUFenable <= not(dip_switches_4bits_tri_i(0));
 
  -- RJ45 1/2 --100 OHM seriel termination on CarBoard for every pair !!
  IBUFDS_inst_TLU_CLK_in : IBUFDS_DIFF_OUT_IBUFDISABLE
 generic map ( DIFF_TERM => "TRUE", IBUF_LOW_PWR => "TRUE", IOSTANDARD => "LVDS", USE_IBUFDISABLE => "TRUE")
                        
                            port map (
 O =>s_TLU_CLK_in, OB => s_TLU_CLK_in_bar, I => FMC_TLU_CLK_P, IB => FMC_TLU_CLK_N, IBUFDISABLE => s_IBUFenable);
 -- RJ45 3/6 
 OBUFDS_inst_TLU_test_BSY : OBUFDS   generic map (IOSTANDARD => "LVDS_25", SLEW => "FAST")         
                             port map (O => FMC_TLU_BSY_P, OB => FMC_TLU_BSY_N, I => s_TLU_BSY_out );

 -- RJ45 4/5
 IBUFDS_inst_TLU_RST_in : IBUFDS_DIFF_OUT_IBUFDISABLE generic map ( DIFF_TERM => "TRUE", IBUF_LOW_PWR => "TRUE", IOSTANDARD => "LVDS", USE_IBUFDISABLE => "TRUE")
                           port map ( O =>s_TLU_CONT, OB => s_TLU_CONT_bar, I => FMC_TLU_RST_P, IB => FMC_TLU_RST_N, IBUFDISABLE => s_IBUFenable);
 --s_TLU_CONT_in <= s_TLU_CONT and s_TLU_CONT_en;
 
 -- RJ45 7/8   
IBUFDS_inst_TLU_TRG_in : IBUFDS_DIFF_OUT_IBUFDISABLE generic map ( DIFF_TERM => "TRUE", IBUF_LOW_PWR => "TRUE", IOSTANDARD => "LVDS", USE_IBUFDISABLE => "TRUE")   
                          port map ( O => s_TLU_TRG_in, OB => s_TLU_TRG_in_bar,I => FMC_TLU_TRG_P, IB => FMC_TLU_TRG_N, IBUFDISABLE => s_IBUFenable);

s_TLU_TRG <= (s_TLU_TRG_in or s_control_out(27));


 
 --begin---------------    stretch initTS  detect TLU trg----------------------------------------------------------------------
   
      
  process(s_clk_TLU_pll_320) --------pedge TLU_CONT mit 160MHz --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(s_clk_TLU_pll_320) ) then  
      s_TSini_pedge <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_TLU_CONT & pipe(1); 
    end if;       
  end process; 
  
  process(s_clk_TLU_pll_320) --------pedge TLU_trg mit 160MHz --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(s_clk_TLU_pll_320) ) then  
      s_TLU_TRG_pedge <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_TLU_TRG & pipe(1); 
    end if;       
  end process; 
  
  --------------------------------------------------------------------------------------------------------------
  process (s_clk_TLU_pll_320) --------pedge TLU_clk mit 160MHz ---------
    variable pipe: std_logic_vector(1 to 2);
    begin
      if ( rising_edge(s_clk_TLU_pll_320) ) then  
        s_p <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_TLU_clk_gbuf & pipe(1); 
      end if;       
    end process; 
    
   process  (s_clk_TLU_pll_320) --------nedge TLU_clk mit 160MHz ---------
    variable pipe: std_logic_vector(1 to 2);
    begin
      if ( rising_edge(s_clk_TLU_pll_320) ) then   
        s_n <= (pipe(1) xor pipe(2))  and  (     pipe(2)); pipe:=  s_TLU_clk_gbuf & pipe(1); 
    end if;       
    end process; 
    
    
  s_TLU_CLK_pedge_nedge <= s_p or s_n;	
  
  -----------------------------------------------------------------------------------------------------------------
  
 -- s_clk_TLU_pll_par = 64/32MHz
  process (s_clk_TLU_pll_320) --shift registers
  begin
    if ( rising_edge(s_clk_TLU_pll_320) ) then  
      for i in 0 to 10 loop
        s_trg_tmp(i+1) <= s_trg_tmp(i);
      end loop;
      s_trg_tmp(0) <= s_TLU_TRG_pedge;
    end if;
   end process;
 
   process (s_clk_TLU_pll_320)--stretch to 50ns
   begin
     if ( rising_edge(s_clk_TLU_pll_320) ) then  
       if ( s_trg_tmp(8)='1') then s_TLU_TRG_stretched <= '0'; elsif (s_TLU_TRG_pedge = '1') then s_TLU_TRG_stretched <= '1'; end if;
     end if;
   end process;
   
  process(s_clk_TLU_pll_par) --------pedge TLU_trg_streched mit s_clk_TLU_pll_par --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(s_clk_TLU_pll_par) ) then  
      s_TLU_TRG_stretched_p <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_TLU_TRG_stretched & pipe(1); 
    end if;       
  end process; 
   
   
  

  process (s_clk_TLU_pll_320) --shift registers
  begin
    if ( rising_edge(s_clk_TLU_pll_320) ) then  
      for i in 0 to 50 loop
        s_tsini_tmp(i+1) <= s_tsini_tmp(i);
      end loop;
      s_tsini_tmp(0) <= s_TSini_pedge; --- TLU_cont pedge sampled with s_clk_TLU_pll_320 ----- AIDA Mode 
     -- s_tsini_tmp(0) <= s_reset_TS; -------------- -- first trigger sends TimeStamp reset----AIDA Mode with Trigger Number--------------<<
    end if;
   end process;
 
   process (s_clk_TLU_pll_320)--sr FF
   begin
     if ( rising_edge(s_clk_TLU_pll_320) ) then  
       if ( s_tsini_tmp(8)='1') then s_TSini_stretched <= '0'; elsif (s_TSini_pedge = '1') then s_TSini_stretched <= '1'; end if; ----- AIDA Mode ---- stretched to 50ns
       --if ( s_tsini_tmp(8)='1') then s_TSini_stretched <= '0'; elsif (s_reset_TS = '1') then s_TSini_stretched <= '1'; end if;  -- first trigger sends TimeStamp reset---AIDA Mode with Trigger Number-----<<
       
     end if;
   end process;
  




 
 --end----------------- stretch initTS -  TRG ---------------------------------------------------------------------
 
--  process (s_clk_TLU_pll_par,s_INIT_TS_EXT) ---  Eventnumber counter
--  begin
--   if ( rising_edge(s_clk_TLU_pll_par) ) then
--      if ((s_not_locked='1') or ( s_INIT_TS_EXT='1'))  then
--         s_Eventnumber <= (others => '0');
--      elsif s_TLU_TRG_stretched_p ='1' then
--           s_Eventnumber <= s_Eventnumber + 1;
--      end if;
--      s_Eventnumber_valid <= (s_TLU_TRG_stretched_p and s_reg_a_out(0));
--   end if;
--  end process;
  
 TLU_inst2: sim_TLU_aida_fsm
   port map (  
           clk_i => s_clk_TLU_pll_320,
         reset_i => s_not_locked,
         start_i => s_TLU_TRG_pedge,
   pedge_nedge_i => s_TLU_CLK_pedge_nedge,
          cont_i => s_TLU_CONT, --carries eventnumber in case of AIDA mixed mode
         event_o => s_Eventnumber,
        trgtag_o => s_Eventnumber_ready  );
 
  s_eventnumber_valid <= s_Eventnumber_ready and s_reg_a_out(0);    
  
  
   process(s_clk_TLU_pll_par) --------pedge  --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(s_clk_TLU_pll_par) ) then  
      s_eventnumber_valid_p <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_eventnumber_valid & pipe(1); 
    end if;       
  end process; 
   
        
 init_TS_inst2: reset_TS  -- TLU_cont frees UDP FIFO
  port map (
		   clk  => s_clk_TLU_pll_320,
		arm_in	=> s_reg_b_out(1),
		trg_in  => s_TSini_pedge,		
		output	=> s_reset_TS);

			


TLU_inst1: TLU_TDH
  port map (
	 fadc_clk	 => s_clk_TLU_pll_gbuf,
	 fadc_busy   => '0',
	 busy_end_in => x"0010",
	 
	 TLU_trg     => s_TLU_TRG_in,
	 TLU_reset	 => '0', --unused
	 TLU_busy	 => s_TLU_BSY_out, 
	 
	 o_trg_tag	 => s_TLU_trg_tag,
	 o_trg   	 => s_TLU_trg_tag_we,
	 TP		     => s_TP_TLU_TDH );
	 
	 
 
-- process (axi_clk) ---  corrupts TLU trg_tag ???????????????????????????????????????????????????????????????????????????????????????
--  begin
--   if ( rising_edge(axi_clk) ) then
--      if s_wbc_rbc_set='1' then
--         s_TLU_TRG_cnt <= (others => '0');
--      elsif s_TLU_trg_tag_axi_we_pedge ='1' then
--            s_TLU_TRG_cnt <= s_TLU_TRG_cnt + 1;
--      end if;
--   end if;
--  end process;
	 
	 
  process (s_clk_TLU_pll_gbuf) --store trg_tag and TOT counter in register
  begin
   if ( rising_edge(s_clk_TLU_pll_gbuf) ) then  
      if ((s_TLU_trg_tag_we ='1')) then s_trg_tag_TOTcnt <= s_200MHz_cnt & s_TLU_trg_tag ;  end if;  --------------s_TLU_trg_sim entfernen wenn TLU angeschlossen ist !!
   end if;
  end process;
 
 s_status0_0_in(31 downto 0) <= s_trg_tag_TOTcnt(31 downto 0);
 --s_status0_0_in(15 downto 0) <= s_count_async;	
 --s_status0_0_in(31 downto 16) <= s_200MHz_cnt;
  	 
  process(axi_clk) -- sync s_TLU_trg_tag_we to axi_clk
  begin
    if ( rising_edge(axi_clk) ) then  s_TLU_trg_tag_axi_we <= s_TLU_trg_tag_we;  end if;       
  end process;
  process(axi_clk) -------- pedge s_TLU_trg_tag_axi_we_pedge --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(axi_clk) ) then  s_TLU_trg_tag_axi_we_pedge <= (pipe(1) xor pipe(2))  and  ( not pipe(2));  pipe:=  s_TLU_trg_tag_axi_we & pipe(1);  end if;       
end process;



 DATA_FIFO_inst1: data_fifo
 port map (
     clk   => axi_clk,
     srst  => s_wbc_rbc_set,
     din => s_trg_tag_TOTcnt,--fifo1_tdata,
     wr_en => s_TLU_trg_tag_axi_we_pedge,--s_wbc_rbc_comp_axi,
     rd_en  => s_control1_out_pulse(0),
     dout => s_status2_0_in(31 downto 0),
     full => open,
     empty => open,
     data_count => s_status2_1_in(31 downto 16)  );
     

--end TLU---------TLU---------TLU---------TLU---------TLU---------TLU---------



 
------------------------------------------------------------------------------------------------------------
--begin ----------------------------------      FAKE TLU      ----------------------------------------------------
------------------------------------------------------------------------------------------------------------
OBUFDS_inst_FAKE_TLU_CLK : OBUFDS  -- J1 2/4   -- RJ45 1/2  OUT
 generic map (IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map (O => FMC_ADC_OUT_C2_P, OB => FMC_ADC_OUT_C2_N, I => s_clk_20MHz);--s_clk_20MHz --s_clk_40MHz);
IBUFDS_inst_FAKE_TLU_BSY : IBUFDS  -- J1 6/8   -- RJ45 3/6  IN
 generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS")  port map ( O => s_FAKE_TLU_BSY, I => FMC_ADC_OUT_H1_P, IB => FMC_ADC_OUT_H1_N );
OBUFDS_inst_FAKE_TLU_RST : OBUFDS  -- J1 10/12 -- RJ45 4/5  OUT   
 generic map (IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map (O => FMC_ADC_OUT_G1_P, OB => FMC_ADC_OUT_G1_N, I =>  s_FAKE_TLU_CONT );
OBUFDS_inst_FAKE_TLU_TRG : OBUFDS  -- J1 14/16  -- RJ45 7/8  OUT  
 generic map (IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map (O => FMC_ADC_OUT_F2_P, OB => FMC_ADC_OUT_F2_N, I => s_FAKE_TLU_TRG );--s_FAKE_TLU_TRG );

sim_TLU_inst1: sim_TLU_fsm
 port map (  clk_i => s_clk_20MHz,--s_clk_20MHz --s_clk_40MHz
           start_i => s_TLU_trg_sim,
           reset_i => s_wbc_rbc_set,
            busy_i => s_TLU_BSY_out,
            cont_o => s_FAKE_TLU_CONT,
          trgtag_o => s_FAKE_TLU_TRG);			

------------------------------------------------------------------------------------------------------------
--end -------------------------------------      FAKE TLU      ----------------------------------------------------
------------------------------------------------------------------------------------------------------------






-----------------------------------------------------
--begin           WBC RBC counters:                --
-----------------------------------------------------
--s_wbc_rbc_set <= s_control1_out(24);
--s_TLU_trg_sim <= s_inj;   ---TEST!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


--WBC_RBC_inst: WBC_RBC_counters
--    port map ( TLU_clk => s_clk_TLU_pll_gbuf,
--              axi_clk => axi_clk,
           
--              SFOUTBUFF_COMP_filtered => s_SFOUTBUFF_COMP_filtered,
--              TLU_trg_sim => s_TLU_trg_sim,
--              TLU_trg_tag_we => s_TLU_trg_tag_we,
--              TLU_trg_tag => s_TLU_trg_tag(15 downto 0),
           
--              wbc_rbc_set  => s_wbc_rbc_set,
--              wbc_load_val => s_control1_out(23 downto 16),
           
--              TOT_cnt_in => s_200MHz_cnt(15 DOWNTO 0),
           
--              fifo1_stop => s_control1_out_pulse(31),
--              fifo1_tdata => fifo1_tdata,
--              fifo1_tvalid => fifo1_tvalid,
--              fifo1_tlast => fifo1_tlast,
           
--              data_fifo_rd => '0',--s_control1_out_pulse(1),
--              data_fifo_out => open,-- s_status3_0_in(31 downto 0),
--              data_fifo_usedw => open );--s_status3_1_in(31 downto 16) );


--s_status3_1_in(15 downto 0) <= s_TLU_TRG_cnt;

-----------------------------------------------------
--end             WBC RBC counters:                --
-----------------------------------------------------





--       __________________________________________________________________
-- begin _______________________MPW3_sim___________________________________
--       __________________________________________________________________

SOUT_testpattern_sm_inst1: send_SOUT_testpattern_sm
  port map  ( clk_i => s_clk_TLU_pll_par,--s_clk_TLU_pll_gbuf,
            reset_i => s_not_locked,--s_locked_reset,
            start_i => s_control2_out(28),
           
         
            Q_10b_o => s_from_8b10b(9 downto 0),
            k_char_o => s_Kchar,
         
            TP_o => s_transm_sm_tp(7 downto 0),
            TP => s_transm_tp);

SEROUT_inst1: serout
port map (frame_40 => s_frame64, --s_clk_TLU_pll_par,--s_clk_TLU_pll_gbuf,
           clk_320 => s_clk_TLU_pll_parx5b,---????????????????????????????????????????????????
               pin => s_from_8b10b(9 downto 0),
              sout_h => s_sout_h,
              sout_l => s_sout_l,
                tp => s_frame_40_pedge);
 

  
  ODDR_inst : ODDR
   generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE", INIT => '0', SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
   port map (
      Q => s_sout,   -- 1-bit DDR output
      C =>  s_clk_TLU_pll_parx5b,  ---????????????????????????????????????????????????
      CE => '1',  -- 1-bit clock enable input
      D1 => s_sout_l,  -- 1-bit data input (positive edge)
      D2 => s_sout_h,  -- 1-bit data input (negative edge)
      R => '0',    -- 1-bit reset input
      S => '0'     -- 1-bit set input
   );         
 
  ODDR_inst1 : ODDR
   generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE", INIT => '0', SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
   port map (
      Q => s_sout1,   -- 1-bit DDR output
      C =>  s_clk_TLU_pll_parx5b,  ---????????????????????????????????????????????????
      CE => '1',  -- 1-bit clock enable input
      D1 => s_sout_l,  -- 1-bit data input (positive edge)
      D2 => s_sout_h,  -- 1-bit data input (negative edge)
      R => '0',    -- 1-bit reset input
      S => '0'     -- 1-bit set input
   );     
       

OBUFDS_inst_SOUT1 :     OBUFDS  generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")   port map ( O => FMC_LVDS16_P, OB => FMC_LVDS16_N, I => s_sout1);--s_sout1 ); !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
OBUFDS_inst_SOUT :      OBUFDS generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST") port map ( O => FMC_LVDS7_P, OB => FMC_LVDS7_N, I => s_INIT_TS_EXT);-- s_sout);--s_sout_test );
OBUFDS_inst_INI_TS_EXT :      OBUFDS generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST") port map ( O => FMC_LVDS9_P, OB => FMC_LVDS9_N, I => s_INIT_TS_EXT);--new chipboard

--     __________________________________________________________________
-- end _______________________MPW3_sim___________________________________
--     __________________________________________________________________







s_SIN_reset <= s_locked_reset or s_UDP_FIFO_reset;

Deser_inst: SIN 
    port map ( 
           clk_320  =>  s_clk_TLU_pll_parx5,
       idel_ref_clk => s_CLKOUT0,  -- 200MHz reference Clock
            clk_64  => s_clk_TLU_pll_par,
           frame64  => s_frame64,  -- clk_64 22.5 degree phase shifted
           axi_clk  => axi_clk,
        
                  rst_n => s_locked,
             not_locked => s_not_locked,
           locked_reset => s_SIN_reset,--s_locked_reset,
           
           FMC_LVDS14_P => FMC_LVDS14_P,
           FMC_LVDS14_N => FMC_LVDS14_N,
           
            FMC_LVDS6_P => FMC_LVDS6_P,
            FMC_LVDS6_N => FMC_LVDS6_N,
            --------------------------------------------------------
               CNTVALIN => s_CNTVALIN,--s_control2_out(26 downto 22),
                BITSLIP => s_BITSLIP,--s_control2_out(9 downto 8),
              CNTVALIN1 => s_CNTVALIN1,--s_control2_out(4 downto 0),
               BITSLIP1 => s_BITSLIP1,--s_control2_out(7 downto 6),
              IDELAY_LD => s_IDELAY_LD,--s_control2_out_pulse(27),
             IDELAY1_LD => s_IDELAY1_LD,--s_control2_out_pulse(5),
            CNTVALUEOUT => s_status1_0_in(20 downto 16),
           CNTVALUEOUT1 => s_status1_0_in(25 downto 21),
           
           code_err_reg => s_status1_0_in(26),--: out STD_LOGIC;
          code_err1_reg => s_status1_0_in(27),--: out STD_LOGIC;
          
     reset_code_err_reg => s_control2_out_pulse(30),
     
            TS_ovfl_cnt => s_TS_ovfl_cnt,           
         Eventnumber_in => s_Eventnumber,  
      Eventnumber_valid => s_Eventnumber_valid_p,  
              TLU_TS_in => tluCounterVector, 
     
          AXI_fifo_data => s_status3_0_in(31 downto 0),--: out STD_LOGIC_VECTOR (31 downto 0);
            AXI_fifo_rd => s_control1_out_pulse(1),
         AXI_fifo1_data => s_status3_1_in(31 downto 0),--: out STD_LOGIC_VECTOR (31 downto 0);
           AXI_fifo1_rd => s_control1_out_pulse(1),
    
    
         UDP_fifo_reset => open,--s_UDP_FIFO_reset,--: out STD_LOGIC;
         UDP_fifo1_data => s_UDP_fifo1_data(31 downto 0),--: out STD_LOGIC_VECTOR (31 downto 0);
           UDP_fifo1_we => s_UDP_fifo1_we,--: out STD_LOGIC;

       
          UDP_fifo_data => s_UDP_fifo_data(31 downto 0),--: out STD_LOGIC_VECTOR (31 downto 0);
            UDP_fifo_we => s_UDP_fifo_we,--: out STD_LOGIC;

               SIN_copy => s_TWTP1,
              SIN1_copy => s_TWTP2,  
              
               TP_decode => s_TP_decode,
                    TP  => s_SIN_TP,--: out STD_LOGIC);
                    TPP  => s_SIN_TPP);--: out STD_LOGIC);


                                     
--   ---------------------------------------------------------------------------------------------------------------------
  
  process (axi_clk) -- store IDELAy and BITSLIP values
  begin
  if ( rising_edge(axi_clk) ) then
      if (s_control2_out_pulse(27)='1') then s_CNTVALIN <= s_control2_out(26 downto 22); s_BITSLIP <= s_control2_out(11 downto 9); end if;
      if (s_control2_out_pulse(5)='1') then  s_CNTVALIN1 <= s_control2_out(4 downto 0); s_BITSLIP1 <= s_control2_out(8 downto 6); end if;
      s_IDELAY_LD <= s_control2_out_pulse(27);
      s_IDELAY1_LD <= s_control2_out_pulse(5);
      s_UDP_FIFO_reset <= s_IDELAY_LD or s_reg_b_out(0) or s_reset_TS ;  -- s_reset_TS => set with s_reg_b_out(1)pulse clear with TLU_cont
   end if;
end process; 
   

                   

UDP_reg_inst: data_reg_buffer
    Port map (     clk => s_clk_TLU_pll_par,
   data_taking_enabled => s_control_out(0),
               decode  => s_UDP_fifo_data(31 downto 0),  --in
               decode1 => s_UDP_fifo1_data(31 downto 0), --out
            decode_UDP => s_decode_out_UDP(31 downto 0),   --in
           decode1_UDP => s_decode1_out_UDP(31 downto 0),  --out
                    we => s_UDP_fifo_we,   --in
                   we1 => s_UDP_fifo1_we,  --in
                we_UDP => s_we_UDP,        --out
               we1_UDP => s_we1_UDP );     --out
   

--##########################################  AXI streaming FIFOs ############################################################

AXI_straem_inst: clock_domain_fifo
  PORT map (
    rst => s_locked_reset,
    wr_clk => s_clk_TLU_pll_par,
    rd_clk => axi_clk,
    din => s_UDP_fifo_data,
    wr_en  => s_UDP_fifo_we,
    rd_en => s_FIFO_tready,
    dout => s_CDF_out,
    full => s_axi_stream_full,
    empty => s_AXI_straem_empty );

s_tlast_stream <= '1' when ((s_CDF_out(31 downto 24) = x"e0")and (s_AXI_straem_empty ='0'))  else '0';
process (axi_clk) -- register axi fifo signals
  begin
  if ( rising_edge(axi_clk) ) then
    tdata(31 downto 0) <= s_CDF_out(31 downto 0);   
    tvalid <= (not(s_AXI_straem_empty)) and s_FIFO_tready;
    tlast <= s_tlast_stream;
 end if;
end process;    

--########################################

AXI_straem1_inst: clock_domain_fifo
  PORT map (
    rst => s_locked_reset,
    wr_clk => s_clk_TLU_pll_par,
    rd_clk => axi_clk,
    din => s_UDP_fifo1_data,
    wr_en  => s_UDP_fifo1_we,
    rd_en => s_FIFO1_tready,
    dout => s_CDF1_out,
    full => open,
    empty => s_AXI_straem1_empty );

s_tlast_stream1 <= '1' when ((s_CDF1_out(31 downto 24) = x"e0")and (s_AXI_straem1_empty ='0'))  else '0';
process (axi_clk) -- register axi fifo signals
  begin
  if ( rising_edge(axi_clk) ) then
    fifo1_tdata(31 downto 0) <= s_CDF1_out(31 downto 0);   
    fifo1_tvalid <= (not(s_AXI_straem1_empty)) and s_FIFO1_tready;
    fifo1_tlast <= s_tlast_stream1;
 end if;
end process;    


--##########################################  AXI streaming FIFOs end ############################################################






 
process (axi_clk) -- testpin registers
  begin
  if ( rising_edge(axi_clk) ) then
      fifo1_tdata_tp(31 downto 0) <= fifo1_tdata(31 downto 0);   
      fifo1_tvalid_tp <= fifo1_tvalid;
      fifo1_tlast_tp <= fifo1_tlast;
      s_FIFO1_tready_tp <= s_FIFO1_tready;
      s_AXI_straem1_empty_tp <= s_AXI_straem1_empty;
   end if;
end process;     
  
  process (s_mac_tx_clk) -- UDP FIFO empty protection .................... s_prog_almost_full <->s_start_transmit
  begin
   if ( rising_edge(s_mac_tx_clk) ) then
         if (s_start_transmit = '1')    then s_allow_read_base <= '1';
      elsif (s_empty_base = '1')         then s_allow_read_base <= '0';
     end if;
     
       if (s_start_transmit = '1')    then s_allow_read_piggy <= '1';
      elsif (s_empty_piggy = '1')       then s_allow_read_piggy <= '0';
     end if;
     
   end if;
  end process;
 
  s_rd_base <= s_read_base and s_allow_read_base; 
  s_rd_piggy <= s_read_piggy and s_allow_read_piggy;  
 
  s_not_allow_read_base <= not(s_allow_read_base);
  s_not_allow_read_piggy <= not(s_allow_read_piggy);
  
 UDP_FIFO_base: fifo_generator_1
  port map(
    rst => s_UDP_FIFO_reset,--s_transm_tp, --!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    wr_clk => s_clk_TLU_pll_par,
    rd_clk => s_mac_tx_clk,
    din => s_decode_out_UDP(31 DOWNTO 0),
    wr_en => s_we_UDP,
    rd_en => s_rd_base,
    dout => s_data_base(31 DOWNTO 0),
    full => s_full_base,
    --wr_data_count => s_write_data_count_UDPfifo(13 downto 0),
    empty => s_empty_base,  --asserted/dasserted at 6/7  
    prog_full => s_prog_full_base );  --asserted/dasserted at 4096/4095  JUMBO frame = 9000Bytes
  
  UDP_FIFO_piggy: fifo_generator_1
  port map(
    rst => s_UDP_FIFO_reset, --s_transm_tp, --!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    wr_clk => s_clk_TLU_pll_par,
    rd_clk => s_mac_tx_clk,
    din => s_decode1_out_UDP(31 DOWNTO 0),
    wr_en => s_we1_UDP,
    rd_en => s_rd_piggy,
    dout => s_data_piggy(31 DOWNTO 0),
    full => s_full_piggy,
    --wr_data_count => s_write_data_count_UDPfifo(13 downto 0),
    empty => s_empty_piggy,     --asserted/dasserted at 6/7
    prog_full => s_prog_full_piggy );  --asserted/dasserted at 4096/4095  JUMBO frame = 9000Bytes
 
  process (s_mac_tx_clk) -- UDP FIFO data_reg ?????????????????? 
  begin
   if ( rising_edge(s_mac_tx_clk) ) then
     if ((s_empty_base = '1') or (s_allow_read_base = '0'))  then s_GBEdata_base(31 downto 0) <= x"00000000";   else  s_GBEdata_base(31 downto 0)  <= s_data_base(31 downto 0); end if;
     if ((s_empty_piggy = '1') or (s_allow_read_piggy = '0')) then s_GBEdata_piggy(31 downto 0) <= x"00000000";  else  s_GBEdata_piggy(31 downto 0) <= s_data_piggy(31 downto 0); end if;
   
   --if ((s_empty_base = '1'))  then s_GBEdata_base(31 downto 0) <= x"00000000";   else  s_GBEdata_base(31 downto 0)  <= s_data_base(31 downto 0); end if;
   --if ((s_empty_piggy = '1')) then s_GBEdata_piggy(31 downto 0) <= x"00000000";  else  s_GBEdata_piggy(31 downto 0) <= s_data_piggy(31 downto 0); end if;
   
   end if;
  end process;
 

 s_status1_0_in(15 downto 2) <= s_write_data_count_UDPfifo(13 downto 0);

 

 

 
----TESTPINS  --- TESTPINS   ----TESTPINS  --- TESTPINS
 
 SFP_TX_DISABLE <= '0';--  
 
  
 PMOD1_0_LS <=  s_GBE_TP(0);--s_TLU_clk_gbuf;--s_TLU_CLK_in_bar;--s_TP_decode(0);--s_SER_OUT_in; --s_code_err; --s_decode_out_UDP(0);--s_decode_out(0);--s_from_8b10b(0); --periphery_TP(0);
 PMOD1_1_LS <=  s_GBE_TP(1);--s_TLU_TRG_in_bar;--s_send_UDP_active;--; --s_TP_decode(1);--s_SHIFT_IN_PROGR_in; --s_code_err1; --s_decode_out_UDP(1);     --periphery_TP(1);
 PMOD1_2_LS <=  s_GBE_TP(2);--s_TLU_CONT_bar;--s_clk_TLU_pll_gbuf; -- s_decode_out_UDP(2);-- periphery_TP(2);
 PMOD1_3_LS <=  s_GBE_TP(3);--s_globalTS(7);--s_TLU_BSY_out;--s_TP_decode(3);--'0'; -- s_decode_out_UDP(3);
     
 PMOD1_4_LS <=  '0';--s_control_out(0);--s_TP_decode(4);--s_SOUT_PC_sr(0);--s_GBE_TP(4); --s_decode_out_UDP(4);--s_deser_in(4);
 PMOD1_5_LS <=  (not(s_send_UDP_active));--'0';--s_read_base;--s_TP_decode(5);--s_SOUT_PC_sr(15);--s_status1_0_in(27);--s_GBE_TP(5); --s_decode_out_UDP(5);
 PMOD1_6_LS <=  s_start_transmit_af;--'0';--s_we_UDP;--s_TP_decode(6);--s_SOUT_PC_sr(31);--s_GBE_TP(6); --s_decode_out_UDP(6);
 PMOD1_7_LS <=  s_send_UDP_active;--'0';--s_prog_almost_full;--s_axi_stream_full;--s_TP_decode(7);--s_SOUT_PC_sr(47);--s_GBE_TP(7);--tvalid;--s_GBE_TP(7); --s_decode_out_UDP(7);

  -------------------------------------------------------------------------------------------------------------------          
   BUFDS_inst_USER_SMA_CLK : IBUFDS generic map ( DIFF_TERM => TRUE, IBUF_LOW_PWR => TRUE, IOSTANDARD => "LVDS_25") port map ( O => s_user_sma_clk, I => USER_SMA_CLOCK_P, IB => USER_SMA_CLOCK_N );
   BUFG_inst_USER_SMA_CLK : BUFG port map ( O => s_user_sma_clk_bufg, I => s_user_sma_clk );
   -- OBUFDS_inst_USER_SMA_CLK  :   OBUFDS generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST") port map ( O => USER_SMA_CLOCK_P,   OB => USER_SMA_CLOCK_N,   I => '0');--s_sin_idelay);--s_in_clk_SI5345_CARboard);--s_clk_TLU_pll_gbuf);--40MHz to ChipBoard
   
 --FMC_105_DEBUG ---------------------------------------------------------------------

 --s_test_or <= s_decode1_out(7) or s_decode1_out(6) or s_decode1_out(5) or s_decode1_out(4) or s_decode1_out(3) or s_decode1_out(2) or s_decode1_out(1) or s_decode1_out(0);
 OBUFDS_inst_TW_TP1 : OBUFDS  -- J1 17/19
 generic map (IOSTANDARD => "LVDS_25", SLEW => "FAST")         
    port map (O => FMC_LPC_LA04_P, OB => FMC_LPC_LA04_N, I => s_GBE_tw_tp_out2);--s_GBE_tw_tp_out1);--s_clk_TLU_pll_gbuf );
    --port map (O => FMC_LPC_LA04_P, OB => FMC_LPC_LA04_N, I => tvalid) ;--s_control_out(0) );
    --port map (O => FMC_LPC_LA04_P, OB => FMC_LPC_LA04_N, I => s_in_clk_SI5345_CARboard) ;
    --port map (O => FMC_LPC_LA04_P, OB => FMC_LPC_LA04_N, I => s_PAD_SOUT_PC_input) ;
       
 OBUFDS_inst_TW_TP2 : OBUFDS     -- J1  9/11
 generic map ( IOSTANDARD => "LVDS_25", SLEW => "FAST")         
 port map ( O => FMC_LPC_LA02_P, OB => FMC_LPC_LA02_N, I => s_GBE_tw_tp_out1);--s_GBE_tw_tp_out2);--s_TS_OVFL);--s_SIN_TPP);--s_TWTP2);--s_decode_KCHAR_out(0));--s_GBE_tw_tp_out1);--s_frame_40_pedge);--s_sin_idelay); 
 

  ---------------------------------------------------------------------------------------------------
  --                                 NIM_ADAPTER                                                   --
  --------------------------------------------------------------------------------------------------- 
  
  s_NIM_OUT1 <= s_inj_out_pedge;--s_SFOUTBUFF_COMP_pedge; -------- s_NIMout1_trigger_to_TLU --------- 
  s_NIM_OUT2 <= s_TLU_CONT;

  process(s_clk_TLU_pll_gbuf) --------pedge s_inj_out
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(s_clk_TLU_pll_gbuf) ) then  
      s_inj_out_pedge <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_inj_out & pipe(1); 
    end if;       
  end process; 


  
                FMC_ADC_OUT_D2_N      <= s_NIM_OUT1; --J1 39       
  s_NIM_IN1  <= FMC_INJ_CTRL4_DIF_N;                 --J1 36      
  s_NIM_GND  <= FMC_ADC_OUT_D2_P;                    --J1 37  INPUT unused   
                FMC_LPC_LA08_N        <= s_NIM_OUT2; --J1 35 
 s_NIM_IN2   <= FMC_CMOS_OUT2_DIF_P;                 --J1 38   
               -- FMC_CMOS_OUT2_DIF_N   <= s_transm_sm_tp(3);  --J1_40   s_TW_OUT1
 OBUF_inst : OBUF generic map ( DRIVE => 8, IOSTANDARD => "LVCMOS12", SLEW => "SLOW") port map ( O => FMC_CMOS_OUT2_DIF_N, I => '0');--s_decode_KCHAR_out(0));
  
 
 s_NIM_OUT2 <= s_TLU_CONT;
 
 ------------------------------------------------------------------------------------------------------

 --FMC_105_DEBUG end ---------------------------------------------------------------------

Alive_inst : heartbeat  port map( reset_i	=> s_locked_reset, clk_i	=> s_clk_TLU_pll_gbuf, heartbeat_o  =>   s_leds(0) );




--\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
--\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
--\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

process(s_clk_TLU_pll_parx2p5) --------pedge s_TS_OVFL --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(s_clk_TLU_pll_parx2p5) ) then  
      s_TS_OVFL_p <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_TS_OVFL & pipe(1); 
    end if;       
  end process;

-- process (s_clk_TLU_pll_parx2p5) ---  TS overflow counter
--  begin
--   if ( rising_edge(s_clk_TLU_pll_parx2p5) ) then
--      if ((s_not_locked='1') or ( s_INIT_TS_EXT='1'))  then
--         s_TS_ovfl_cnt <= (others => '0');
--      elsif s_TS_OVFL_p ='1' then
--           s_TS_ovfl_cnt <= s_TS_ovfl_cnt + 1;
--      end if;
--   end if;
--  end process;

 process (s_clk_TLU_pll_parx2p5, s_not_locked, s_INIT_TS_EXT) ---  TS overflow counter async reset
  begin
   if ((s_not_locked='1') or ( s_INIT_TS_EXT='1'))  then
     s_TS_ovfl_cnt <= (others => '0');
   elsif ( rising_edge(s_clk_TLU_pll_parx2p5) ) then
      if s_TS_OVFL_p ='1' then s_TS_ovfl_cnt <= s_TS_ovfl_cnt + 1; end if;
   end if;
  end process;
  
  
  
  
  --//////////////////////////////////////////////////////////////////////////////////////////////////////
  process(s_mac_tx_clk) --------pedge s_clk_TLU_pll_gbuf --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(s_mac_tx_clk) ) then  
      s_incr_glTScnt <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_clk_TLU_pll_gbuf & pipe(1); 
    end if;       
  end process;
  
 
 
 
  process (s_mac_tx_clk,s_not_locked,s_INIT_TS_EXT) ---  global TS counter synq reset
  begin
   if ( rising_edge(s_mac_tx_clk) ) then
         if ((s_not_locked = '1') or ( s_INIT_TS_EXT='1'))  then s_globalTS <= (others => '0');
      elsif (s_incr_glTScnt = '1')                          then s_globalTS <= s_globalTS + 1;
     end if;
   end if;
  end process;
  --//////////////////////////////////////////////////////////////////////////////////////////////////////
  
  s_INIT_TS_EXT_del <= '1' when s_globalTS = (x"00000000" & s_reg_f_out) else '0';
 

  process (s_mac_tx_clk,s_INIT_TS_EXT) ---  global TS counter synq reset
  begin
   if ( rising_edge(s_mac_tx_clk) ) then
         if ( s_INIT_TS_EXT_del='1')                    then  s_TS_test_INJ_pulse_gate <= '1' ;
      elsif (s_globalTS = x"0000_0000" & s_reg_g_out)   then  s_TS_test_INJ_pulse_gate <= '0' ;
     end if;
   end if;
  end process;
  
  s_TS_test_INJ_pulse <= s_TS_test_INJ_pulse_gate and s_globalTS(7);

---------------------------------------------------------------------------------------------------------------------------------
process(s_clk_TLU_pll_parx5) --------pedge TLU_clk --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin 
    if ( rising_edge(s_clk_TLU_pll_parx5) ) then  s_incr_TLUcounter <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  s_TLU_clk_gbuf & pipe(1);  end if;       
  end process;
  
process (s_clk_TLU_pll_parx5) ---  TLU timestamp counter
  begin
   if ( rising_edge(s_clk_TLU_pll_parx5) ) then
      if ((s_not_locked='1') or ( s_INIT_TS_EXT='1'))  then
         tluCounterVector <= (others => '0');
      elsif s_incr_TLUcounter ='1' then
           tluCounterVector <= tluCounterVector + 1;
      end if;
   end if;
  end process;
------------------------------------------------------------------------------------------------------------------------------------
--\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
--\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
--\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/



led(0) <= s_reg_a_out(0); --dip_switches_4bits_tri_i(0);
led(1) <= s_reg_b_out(0); --dip_switches_4bits_tri_i(1);
led(2) <= s_reg_c_out(0); --dip_switches_4bits_tri_i(2);
led(3) <= s_leds(0); --dip_switches_4bits_tri_i(3);

end STRUCTURE;

