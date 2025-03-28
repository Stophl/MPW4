library ieee;
use ieee.std_logic_1164.all;
-- Package Declaration Section
package caribou_package is
 
  --constant c_PIXELS : integer := 65536;
 
--  type t_FROM_FIFO is record
--    wr_full  : std_logic;
--    rd_empty : std_logic;
--  end record t_FROM_FIFO;  
   ------------------------------------------------------------
   component pll1
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0				: OUT STD_LOGIC ;
		c1				: OUT STD_LOGIC ;
		c2          : OUT STD_LOGIC ;
		c3          : OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC );
   end component;
   ----------------------------------------------------------------
	
	
   component ctrl_const PORT ( result		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0) ); end component;
   ----------------------------------------------------------------
   component Length_constant PORT ( result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) );end component;

  
   -------------------------------------------------------------------------------------------
   component reset_sequencer
   port 
	(
		clk			 : in std_logic;

		sr_in		 : in std_logic;
		sr_tap_one	 : out std_logic;
		sr_tap_two	 : out std_logic;
		sr_out		 : out std_logic);
	end component;
   ----------------------------------------------------------------
	
	component DDIO_out
	PORT
	(
		datain_h		: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
		datain_l		: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
		outclock		: IN STD_LOGIC ;
		dataout		: OUT STD_LOGIC_VECTOR (0 DOWNTO 0));
   end component;
	
	--------------------------------------------------------------------------------
	
	component mac_ctrl_fsm 
   port (clk_i :         in   std_logic;
         reset_i :       in   std_logic;
         sw_reset_i :    in   std_logic;
         start_i :       in   std_logic;
         readback_i:     in   std_logic;
			
			MAC_src_addr_i :  in   std_logic_vector(47 downto 0);
			
         --r_addr_in :     in   std_logic_vector(10 downto 2);
         r_data_in :     in   std_logic_vector(31 downto 0);
         waitrequest_in: in   std_logic;
         read_out      : out   std_logic;
			TP				  : out   std_logic;
         
         addr_o :        out  std_logic_vector(7 downto 0);
         data_o :        out  std_logic_vector(31 downto 0);
         wen_o :         out  std_logic);
    end component;
   ---------------------------------------------------------------------------------
	
	
	component transmit_fsm 
   port (clk_i :         in   std_logic;
         start_i :       in   std_logic;
         reset_i :       in   std_logic;
			MAC_src_addr_i : in   std_logic_vector(47 downto 0);
			MAC_dst_addr_i : in   std_logic_vector(47 downto 0);
			IP_src_addr_i :  in   std_logic_vector(31 downto 0);
			IP_dst_addr_i :  in   std_logic_vector(31 downto 0);
			
			fr_length_i :  in   std_logic_vector(15 downto 0);
			fr_identification_i:  in   std_logic_vector(15 downto 0);
			fr_flags_i :  in   std_logic_vector(2 downto 0); -- 2 .. don't fragment     1 .. more fragments
			fr_number_i	:  in   std_logic_vector(12 downto 0);
					
			tr_fifo_payload:      in   std_logic_vector(31 downto 0);
			tr_fifo_readack:		 out  std_logic;
			
         ff_tx_data_o :        out  std_logic_vector(31 downto 0);
         ff_tx_sop_o :         out  std_logic;
         ff_tx_eop_o :         out  std_logic;
         ff_tx_wren_o :        out  std_logic);
    end component;
	---------------------------------------------------------------------------------
	
	

   component transmit_ping_reply 
   port (clk_i :         in   std_logic;
         start_i :       in   std_logic;
         reset_i :       in   std_logic;
			MAC_src_addr_i :  in   std_logic_vector(47 downto 0);
			MAC_dst_addr_i :  in   std_logic_vector(47 downto 0);
			IP_src_addr_i :  in   std_logic_vector(31 downto 0);
			IP_dst_addr_i :  in   std_logic_vector(31 downto 0);
			sequence_i :  in   std_logic_vector(15 downto 0);
			
         ff_tx_data_o :        out  std_logic_vector(31 downto 0);
         ff_tx_sop_o :         out  std_logic;
         ff_tx_eop_o :         out  std_logic;
         ff_tx_wren_o :        out  std_logic);
 		
   end component;
	
	-------------------------------------------------
	
	component check_for_ping_request
   port 
	(
		clk		   : in std_logic;
		sop_reset	: in std_logic;
		eop_reset	: in std_logic;
		rx_addr_i	: in std_logic_vector (7 downto 0);
		rx_data_i	: in std_logic_vector (31 downto 0);
		
		IP_src_addr_i :  in   std_logic_vector(31 downto 0);
		IP_dst_addr_i :  in   std_logic_vector(31 downto 0);
		
		sequence_out: out std_logic_vector (15 downto 0);
		TP_out: out std_logic_vector (7 downto 0);		
		ping_out	: out std_logic);
	end component;
	---------------------------------------------------------------------------------
	
	component check_for_arp_request 
   port 
	(
		clk		   : in std_logic;
		sop_reset	: in std_logic;
		eop_reset	: in std_logic;
		rx_addr_i	: in std_logic_vector (7 downto 0);
		rx_data_i	: in std_logic_vector (31 downto 0);
		
		IP_src_addr_i :  in   std_logic_vector(31 downto 0);
		
		tell_MAC_out: out std_logic_vector (47 downto 0);
		tell_IPaddr_out: out std_logic_vector (31 downto 0);
	   
		TP_out: out std_logic_vector (7 downto 0);	
		arp_out	: out std_logic );
   end component;
	---------------------------------------------------------------------------------
	
	component transmit_arp_reply 
   port (clk_i :         in   std_logic;
         start_i :       in   std_logic;
         reset_i :       in   std_logic;
			MAC_src_addr_i :  in   std_logic_vector(47 downto 0);
			tell_MAC_addr_i :  in   std_logic_vector(47 downto 0);
			IP_src_addr_i :  in   std_logic_vector(31 downto 0);
			tell_IPaddr_i :  in   std_logic_vector(31 downto 0);
		
         ff_tx_data_o :        out  std_logic_vector(31 downto 0);
         ff_tx_sop_o :         out  std_logic;
         ff_tx_eop_o :         out  std_logic;
         ff_tx_wren_o :        out  std_logic);
 		
   end component;
	
	--------------------------------------------------------------------
	
	component MAC_Control_READ_ram IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (39 DOWNTO 0));
   end component;
	---------------------------------------------------------------------------------
	
	component rx_RAM
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	end component;
	---------------------------------------------------------------------------------
	
	component rx_RAM_init
	PORT
	(
		clock		: IN STD_LOGIC ;
		init		: IN STD_LOGIC ;
		dataout		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		init_busy		: OUT STD_LOGIC ;
		ram_address		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		ram_wren		: OUT STD_LOGIC 
	);
   end component;
	---------------------------------------------------------------------------------
	component tr_ROM
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
   end component;
   ---------------------------------------------------------------------------------
	
	component FSM_TSE_GMII 
	port 
	(
		clk50: 		in std_logic;
		clk125:		in std_logic;
		clk_100us:  in std_logic;
		pll_locked_in:	 in std_logic;
		
		ctrl_in: std_logic_vector (7 downto 0);
		
		testpin0:		out std_logic;
		testpin1:		out std_logic;
		testpin2:		out std_logic;
		testpin3:		out std_logic;
		testpin4:		out std_logic;
		testpin5:		out std_logic;
		testpin6:		out std_logic;
		testpin7:		out std_logic;
		
		spare6:		out std_logic;
		spare7:		out std_logic;
		
		VMEaddr_switch:  in std_logic_vector (7 downto 0);
		MAC_src_addr_msb:in std_logic_vector (39 downto 0);
		IP_src_addr_msb: in std_logic_vector (23 downto 0);
		MAC_dst_addr    :in std_logic_vector (47 downto 0);
		IP_dst_addr     :in std_logic_vector (31 downto 0);
		
		-- transmit fifo interface:
		fr_transmit_start_in: in std_logic;
		
	   tr_frame_length_in: in std_logic_vector (15 downto 0);
		tr_frame_identification_in: in std_logic_vector (15 downto 0);
		tr_frame_flags_in: in std_logic_vector (2 downto 0);
		tr_frame_number_in: in std_logic_vector (12 downto 0);
					
		tr_fifo_payload_in: in std_logic_vector (31 downto 0);
		tr_fifo_readack_out: out std_logic;
		tr_fifo_almost_full_out: out std_logic;
		
		-- receive FIFO interface:
      re_fifo_data: out std_logic_vector (31 downto 0);
      re_fifo_sop: out std_logic; 
		re_fifo_eop: out std_logic; 
		re_fifo_dval: out std_logic; 
		re_fifo_empty: out std_logic; 
		
		--------------------------------------
		
	   ENET1_MDC:		out std_logic;
	   MDIOout:		out std_logic;
		MDIOin:		in std_logic;
		MDIOoen:		out std_logic;
		
	   ENET1_RX_CLK:  in std_logic;
      ENET1_RX_DATA: in std_logic_vector (7 downto 0);
	   ENET1_RX_DV:   in std_logic;
		
		ENET1_TX_CLK:  in std_logic;
	   ENET1_TX_DATA: out std_logic_vector (7 downto 0);
		ENET1_TX_ER:	out std_logic;
		ENET1_TX_EN:	out std_logic
		
	);

   end component;





	
-- Generated by Triple Speed Ethernet 12.0 [Altera, IP Toolbench 1.3.0 Build 178]
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
-- ************************************************************
-- Copyright (C) 1991-2018 Altera Corporation
-- Any megafunction design, and related net list (encrypted or decrypted),
-- support information, device programming or simulation file, and any other
-- associated documentation or information provided by Altera or a partner
-- under Altera's Megafunction Partnership Program may be used only to
-- program PLD devices (but not masked PLD devices) from Altera.  Any other
-- use of such megafunction design, net list, support information, device
-- programming or simulation file, or any other related documentation or
-- information is prohibited for any other purpose, including, but not
-- limited to modification, reverse engineering, de-compiling, or use with
-- any other silicon devices, unless such use is explicitly licensed under
-- a separate agreement with Altera or a megafunction partner.  Title to
-- the intellectual property, including patents, copyrights, trademarks,
-- trade secrets, or maskworks, embodied in any such megafunction design,
-- net list, support information, device programming or simulation file, or
-- any other related documentation or information provided by Altera or a
-- megafunction partner, remains with Altera, the megafunction partner, or
-- their respective licensors.  No other licenses, including any licenses
-- needed under any third party's intellectual property, are provided herein.

component TSE_GMII_MDIO
	PORT (
		ff_tx_data	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		ff_tx_eop	: IN STD_LOGIC;
		ff_tx_err	: IN STD_LOGIC;
		ff_tx_sop	: IN STD_LOGIC;
		ff_tx_wren	: IN STD_LOGIC;
		ff_tx_clk	: IN STD_LOGIC;
		ff_rx_rdy	: IN STD_LOGIC;
		ff_rx_clk	: IN STD_LOGIC;
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		read	: IN STD_LOGIC;
		writedata	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		write	: IN STD_LOGIC;
		clk	: IN STD_LOGIC;
		reset	: IN STD_LOGIC;
		gm_rx_d	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		gm_rx_dv	: IN STD_LOGIC;
		gm_rx_err	: IN STD_LOGIC;
		m_rx_d	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		m_rx_en	: IN STD_LOGIC;
		m_rx_err	: IN STD_LOGIC;
		tx_clk	: IN STD_LOGIC;
		rx_clk	: IN STD_LOGIC;
		set_10	: IN STD_LOGIC;
		set_1000	: IN STD_LOGIC;
		ff_tx_crc_fwd	: IN STD_LOGIC;
		ff_tx_rdy	: OUT STD_LOGIC;
		ff_rx_data	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		ff_rx_dval	: OUT STD_LOGIC;
		ff_rx_eop	: OUT STD_LOGIC;
		ff_rx_sop	: OUT STD_LOGIC;
		rx_err	: OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
		readdata	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		waitrequest	: OUT STD_LOGIC;
		gm_tx_d	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		gm_tx_en	: OUT STD_LOGIC;
		gm_tx_err	: OUT STD_LOGIC;
		m_tx_d	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		m_tx_en	: OUT STD_LOGIC;
		m_tx_err	: OUT STD_LOGIC;
		ena_10	: OUT STD_LOGIC;
		eth_mode	: OUT STD_LOGIC;
		mdio_in	: IN STD_LOGIC;
		mdio_out	: OUT STD_LOGIC;
		mdio_oen	: OUT STD_LOGIC;
		mdc	: OUT STD_LOGIC;
		ff_tx_septy	: OUT STD_LOGIC;
		tx_ff_uflow	: OUT STD_LOGIC;
		ff_tx_a_full	: OUT STD_LOGIC;
		ff_tx_a_empty	: OUT STD_LOGIC;
		rx_err_stat	: OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
		rx_frm_type	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		ff_rx_dsav	: OUT STD_LOGIC;
		ff_rx_a_full	: OUT STD_LOGIC;
		ff_rx_a_empty	: OUT STD_LOGIC
	);
end component;	
	
-----------------------------------------------------------------------------
component TSE_RGMII_MDIO
	PORT (
		ff_tx_data	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		ff_tx_eop	: IN STD_LOGIC;
		ff_tx_err	: IN STD_LOGIC;
		ff_tx_sop	: IN STD_LOGIC;
		ff_tx_wren	: IN STD_LOGIC;
		ff_tx_clk	: IN STD_LOGIC;
		ff_rx_rdy	: IN STD_LOGIC;
		ff_rx_clk	: IN STD_LOGIC;
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		read	: IN STD_LOGIC;
		writedata	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		write	: IN STD_LOGIC;
		clk	: IN STD_LOGIC;
		reset	: IN STD_LOGIC;
		rgmii_in	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		rx_control	: IN STD_LOGIC;
		tx_clk	: IN STD_LOGIC;
		rx_clk	: IN STD_LOGIC;
		set_10	: IN STD_LOGIC;
		set_1000	: IN STD_LOGIC;
		mdio_in	: IN STD_LOGIC;
		ff_tx_crc_fwd	: IN STD_LOGIC;
		ff_tx_rdy	: OUT STD_LOGIC;
		ff_rx_data	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		ff_rx_dval	: OUT STD_LOGIC;
		ff_rx_eop	: OUT STD_LOGIC;
		ff_rx_sop	: OUT STD_LOGIC;
		rx_err	: OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
		readdata	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		waitrequest	: OUT STD_LOGIC;
		rgmii_out	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		tx_control	: OUT STD_LOGIC;
		ena_10	: OUT STD_LOGIC;
		eth_mode	: OUT STD_LOGIC;
		mdio_out	: OUT STD_LOGIC;
		mdio_oen	: OUT STD_LOGIC;
		mdc	: OUT STD_LOGIC;
		ff_tx_septy	: OUT STD_LOGIC;
		tx_ff_uflow	: OUT STD_LOGIC;
		ff_tx_a_full	: OUT STD_LOGIC;
		ff_tx_a_empty	: OUT STD_LOGIC;
		rx_err_stat	: OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
		rx_frm_type	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		ff_rx_dsav	: OUT STD_LOGIC;
		ff_rx_a_full	: OUT STD_LOGIC;
		ff_rx_a_empty	: OUT STD_LOGIC
	);
end component;
------------------------------------------------------------------------------------

	
	
--  function Bitwise_AND (
--    i_vector : in std_logic_vector(3 downto 0))
--    return std_logic;
   
end package caribou_package;
 
-- Package Body Section
package body caribou_package is
 
--  function Bitwise_AND (
--    i_vector : in std_logic_vector(3 downto 0)
--    )
--    return std_logic is
--  begin
--    return (i_vector (0) and i_vector (1) and i_vector (2) and i_vector (3));
--  end;
 
end package body caribou_package;