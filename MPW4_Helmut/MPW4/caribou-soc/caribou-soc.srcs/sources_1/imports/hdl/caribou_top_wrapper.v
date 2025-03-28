//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.3.1 (lin64) Build 2035080 Fri Oct 20 14:20:00 MDT 2017
//Date        : Tue Jan 23 14:54:52 2018
//Host        : adrian-laptop running 64-bit Ubuntu 17.10
//Command     : generate_target caribou_top_wrapper.bd
//Design      : caribou_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
    
module caribou_top_wrapper ( 
  inout [14:0]DDR_addr,
  inout [2:0]DDR_ba,
  inout DDR_cas_n,
  inout DDR_ck_n,
  inout DDR_ck_p,
  inout DDR_cke,
  inout DDR_cs_n,
  inout [3:0]DDR_dm,
  inout [31:0]DDR_dq,
  inout [3:0]DDR_dqs_n,
  inout [3:0]DDR_dqs_p,
  inout DDR_odt,
  inout DDR_ras_n,
  inout DDR_reset_n,
  inout DDR_we_n,
  inout FIXED_IO_ddr_vrn,
  inout FIXED_IO_ddr_vrp,
  inout [53:0]FIXED_IO_mio,
  inout FIXED_IO_ps_clk,
  inout FIXED_IO_ps_porb,
  inout FIXED_IO_ps_srstb,  
  
  output C3PD_reset_n,
  output C3PD_reset_p,
  input CLICpix2_miso_n,
  input CLICpix2_miso_p,
  output CLICpix2_mosi_n,
  output CLICpix2_mosi_p,
  output CLICpix2_pwr_pulse_n,
  output CLICpix2_pwr_pulse_p,
  output CLICpix2_reset_n,
  output CLICpix2_reset_p,
  output CLICpix2_shutter_n,
  output CLICpix2_shutter_p,
  output CLICpix2_ss_n,
  output CLICpix2_ss_p,
  output CLICpix2_tp_sw_n,
  output CLICpix2_tp_sw_p,  
  
  input SI5345_CLK_OUT8_clk_n,
  input SI5345_CLK_OUT8_clk_p,
  
  output TLU_BSY_n,
  output TLU_BSY_p,
  input TLU_RST_n,
  input TLU_RST_p,
  input TLU_TRG_n,
  input TLU_TRG_p,
  input Transceiver_RX_n,
  input Transceiver_RX_p,
  input Transceiver_refClk_clk_n,
  input Transceiver_refClk_clk_p,
  
  input clk_p,
  input clk_n,
    
  input FMC_LPC_LA02_P,
  input FMC_LPC_LA02_N,
  output FMC_LPC_LA04_P,
  output FMC_LPC_LA04_N,
  output FMC_LPC_LA06_P,
  output FMC_LPC_LA06_N,
  output FMC_LPC_LA08_P,
  output FMC_LPC_LA08_N,
  
  input [3:0]dip_switches_4bits_tri_i,
  input [2:0]gpio_sws_3bits_tri_i,
  output [3:0]led );
  
  //------------------------------------------------------------------------
   
  wire s_in_clk, s_clk_gbuf, s_lvds_input,s_lvds_input_delayed;
  wire[3:0] s_leds;
  wire s_CLKOUT0, s_CLKFB, s_LOCKED;
    
  

  caribou_top caribou_top_i
       (.C3PD_reset_n(C3PD_reset_n),
        .C3PD_reset_p(C3PD_reset_p),
        .CLICpix2_miso_n(CLICpix2_miso_n),
        .CLICpix2_miso_p(CLICpix2_miso_p),
        .CLICpix2_mosi_n(CLICpix2_mosi_n),
        .CLICpix2_mosi_p(CLICpix2_mosi_p),
        .CLICpix2_pwr_pulse_n(CLICpix2_pwr_pulse_n),
        .CLICpix2_pwr_pulse_p(CLICpix2_pwr_pulse_p),
        .CLICpix2_reset_n(CLICpix2_reset_n),
        .CLICpix2_reset_p(CLICpix2_reset_p),
        .CLICpix2_shutter_n(CLICpix2_shutter_n),
        .CLICpix2_shutter_p(CLICpix2_shutter_p),
        .CLICpix2_ss_n(CLICpix2_ss_n),
        .CLICpix2_ss_p(CLICpix2_ss_p),
        .CLICpix2_tp_sw_n(CLICpix2_tp_sw_n),
        .CLICpix2_tp_sw_p(CLICpix2_tp_sw_p),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .SI5345_CLK_OUT8_clk_n(SI5345_CLK_OUT8_clk_n),
        .SI5345_CLK_OUT8_clk_p(SI5345_CLK_OUT8_clk_p),
        .TLU_BSY_n(TLU_BSY_n),
        .TLU_BSY_p(TLU_BSY_p),
        .TLU_RST_n(TLU_RST_n),
        .TLU_RST_p(TLU_RST_p),
        .TLU_TRG_n(TLU_TRG_n),
        .TLU_TRG_p(TLU_TRG_p),
        .Transceiver_RX_n(Transceiver_RX_n),
        .Transceiver_RX_p(Transceiver_RX_p),
        .Transceiver_refClk_clk_n(Transceiver_refClk_clk_n),
        .Transceiver_refClk_clk_p(Transceiver_refClk_clk_p),
        .led(led));
   
   //---------------------------------------------------------------------------------
        
   IBUFDS #( .DIFF_TERM("FALSE"), .IBUF_LOW_PWR("TRUE"), .IOSTANDARD("LVDS") )
   BUFDS_inst_clk_1 ( .O(s_in_clk), .I(clk_p), .IB(clk_n) );
   
   BUFG BUFG_inst_clk_1 ( .O(s_clk_gbuf), .I(s_in_clk) );
     
   OBUFDS #( .IOSTANDARD("LVDS_25"), .SLEW("FAST") )
   OBUFDS_inst_TW_TP1 ( .O(FMC_LPC_LA04_P), .OB(FMC_LPC_LA04_N), .I(s_clk_gbuf) );
   
   OBUFDS #( .IOSTANDARD("LVDS_25"), .SLEW("FAST") )
   OBUFDS_inst_TW_TP2 ( .O(FMC_LPC_LA08_P), .OB(FMC_LPC_LA08_N), .I(s_lvds_input_delayed) );
   
   //----------------------------------------------Loop back--------------------------------------------
   OBUFDS #( .IOSTANDARD("LVDS_25"), .SLEW("FAST") )
   OBUFDS_inst_LVDS_out ( .O(FMC_LPC_LA06_P), .OB(FMC_LPC_LA06_N), .I(s_clk_gbuf) ); 
   
   IBUFDS #( .DIFF_TERM("TRUE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")  )
   IBUFDS_inst_LVDS_IN ( .O(s_lvds_input), .I(FMC_LPC_LA02_P), .IB(FMC_LPC_LA02_N) ); 
   //----------------------------------------------------------------------------------------------------
   
   
   //------------------------------------PLL------------------------------------------------------------
   
   MMCME2_BASE #(
      .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
      .CLKFBOUT_MULT_F(4.0),     // Multiply value for all CLKOUT (2.000-64.000).
      .CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
      .CLKIN1_PERIOD(5.000),       // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
      // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
      .CLKOUT1_DIVIDE(20),
      .CLKOUT2_DIVIDE(1),
      .CLKOUT3_DIVIDE(1),
      .CLKOUT4_DIVIDE(1),
      .CLKOUT5_DIVIDE(1),
      .CLKOUT6_DIVIDE(1),
      .CLKOUT0_DIVIDE_F(1.0),    // Divide amount for CLKOUT0 (1.000-128.000).
      // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
      .CLKOUT0_DUTY_CYCLE(0.5),
      .CLKOUT1_DUTY_CYCLE(0.5),
      .CLKOUT2_DUTY_CYCLE(0.5),
      .CLKOUT3_DUTY_CYCLE(0.5),
      .CLKOUT4_DUTY_CYCLE(0.5),
      .CLKOUT5_DUTY_CYCLE(0.5),
      .CLKOUT6_DUTY_CYCLE(0.5),
      // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
      .CLKOUT0_PHASE(0.0),
      .CLKOUT1_PHASE(0.0),
      .CLKOUT2_PHASE(0.0),
      .CLKOUT3_PHASE(0.0),
      .CLKOUT4_PHASE(0.0),
      .CLKOUT5_PHASE(0.0),
      .CLKOUT6_PHASE(0.0),
      .CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
      .DIVCLK_DIVIDE(1),         // Master division value (1-106)
      .REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
      .STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
   )
   MMCME2_BASE_inst (
      // Clock Outputs: 1-bit (each) output: User configurable clock outputs
      .CLKOUT0(s_CLKOUT0),     // 1-bit output: CLKOUT0
      .CLKOUT0B(),   // 1-bit output: Inverted CLKOUT0
      .CLKOUT1(),     // 1-bit output: CLKOUT1
      .CLKOUT1B(),   // 1-bit output: Inverted CLKOUT1
      .CLKOUT2(),     // 1-bit output: CLKOUT2
      .CLKOUT2B(),   // 1-bit output: Inverted CLKOUT2
      .CLKOUT3(),     // 1-bit output: CLKOUT3
      .CLKOUT3B(),   // 1-bit output: Inverted CLKOUT3
      .CLKOUT4(),     // 1-bit output: CLKOUT4
      .CLKOUT5(),     // 1-bit output: CLKOUT5
      .CLKOUT6(),     // 1-bit output: CLKOUT6
      // Feedback Clocks: 1-bit (each) output: Clock feedback ports
      .CLKFBOUT(s_CLKFB),   // 1-bit output: Feedback clock
      .CLKFBOUTB(), // 1-bit output: Inverted CLKFBOUT
      // Status Ports: 1-bit (each) output: MMCM status ports
      .LOCKED(s_LOCKED),       // 1-bit output: LOCK
      // Clock Inputs: 1-bit (each) input: Clock input
      .CLKIN1(s_clk_gbuf),       // 1-bit input: Clock
      // Control Ports: 1-bit (each) input: MMCM control ports
      .PWRDWN(1'b0),       // 1-bit input: Power-down
      .RST(1'b0),             // 1-bit input: Reset
      // Feedback Clocks: 1-bit (each) input: Clock feedback ports
      .CLKFBIN(s_CLKFB)      // 1-bit input: Feedback clock
   );
   
   
   //-----------------------------------------------------------------------------------------------------------
   (* IODELAY_GROUP = "idelay_grp_1" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
   
     IDELAYCTRL IDELAYCTRL_inst (
        .RDY(),       // 1-bit output: Ready output
        .REFCLK(s_clk_gbuf), // 1-bit input: Reference clock input 200MHz
        .RST(~s_LOCKED)        // 1-bit input: Active high reset input
     );
   //------------------------------------------------------------------------------------------------------------
    (* IODELAY_GROUP = "idelay_grp_1" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
   
     IDELAYE2 #(
        .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
        .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
        .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
        .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
        .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
        .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
        .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
        .SIGNAL_PATTERN("CLOCK")          // DATA, CLOCK input signal
     )
     IDELAYE2_inst (
        .CNTVALUEOUT(), // 5-bit output: Counter value output
        .DATAOUT(s_lvds_input_delayed),         // 1-bit output: Delayed data output
        .C(s_CLKOUT0),                     // 1-bit input: Clock input
        .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
        .CINVCTRL(),       // 1-bit input: Dynamic clock inversion input
        .CNTVALUEIN({1'b0,dip_switches_4bits_tri_i}),   // 5-bit input: Counter value input
        .DATAIN(),           // 1-bit input: Internal delay data input
        .IDATAIN(s_lvds_input),         // 1-bit input: Data input from the I/O
        .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
        .LD(gpio_sws_3bits_tri_i[0]),                   // 1-bit input: Load IDELAY_VALUE input
        .LDPIPEEN(),       // 1-bit input: Enable PIPELINE register to load data input
        .REGRST()            // 1-bit input: Active-high reset tap-delay input
     );

endmodule
