library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity GBE_SFP is
  Port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    
    clk_200MHz_in: in STD_LOGIC;
    
    glbl_rst: in STD_LOGIC;
    transmit_start : in STD_LOGIC;
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
    
    status_vector_out : out std_logic_vector (19 downto 0);
    
    GBE_tw_tp_out1: out std_logic;
    GBE_tw_tp_out2: out std_logic;
    
    send_UDP_active:		out  std_logic;
    
    GBE_TP_out: out std_logic_vector (7 downto 0)
  );
end GBE_SFP;

architecture Behavioral of GBE_SFP is

 ---------------------------------------------------------------------------------------------------------------   
   
 component tri_mode_ethernet_mac_1
 port(
      gtx_clk                    : in  std_logic;
      
      -- asynchronous reset
      glbl_rstn                  : in  std_logic;
      rx_axi_rstn                : in  std_logic;
      tx_axi_rstn                : in  std_logic;

      -- Receiver Interface
      ----------------------------

      rx_statistics_vector       : out std_logic_vector(27 downto 0);
      rx_statistics_valid        : out std_logic;

      rx_mac_aclk                : out std_logic;
      rx_reset                   : out std_logic;
      rx_axis_mac_tdata          : out std_logic_vector(7 downto 0);
      rx_axis_mac_tvalid         : out std_logic;
      rx_axis_mac_tlast          : out std_logic;
      rx_axis_mac_tuser          : out std_logic;

      -- Transmitter Interface
      -------------------------------

      tx_ifg_delay               : in  std_logic_vector(7 downto 0);
      tx_statistics_vector       : out std_logic_vector(31 downto 0);
      tx_statistics_valid        : out std_logic;

      tx_mac_aclk                : out std_logic;
      tx_reset                   : out std_logic;
      tx_axis_mac_tdata          : in  std_logic_vector(7 downto 0);
      tx_axis_mac_tvalid         : in  std_logic;
      tx_axis_mac_tlast          : in  std_logic;
      tx_axis_mac_tuser          : in  std_logic_vector(0 downto 0);
      tx_axis_mac_tready         : out std_logic;
      -- MAC Control Interface
      ------------------------
      pause_req                  : in  std_logic;
      pause_val                  : in  std_logic_vector(15 downto 0);

      speedis100                 : out std_logic;
      speedis10100               : out std_logic;
      -- GMII Interface
      -----------------
      gmii_txd                   : out std_logic_vector(7 downto 0);
      gmii_tx_en                 : out std_logic;
      gmii_tx_er                 : out std_logic;
      gmii_rxd                   : in  std_logic_vector(7 downto 0);
      gmii_rx_dv                 : in  std_logic;
      gmii_rx_er                 : in  std_logic;

      -- Configuration Vector
      -----------------------
      rx_configuration_vector    : in  std_logic_vector(79 downto 0);
      tx_configuration_vector    : in  std_logic_vector(79 downto 0)
   );
end component;

 --------------------------------------------------------------------------------------------------------------- 
  component gig_ethernet_pcs_pma_1
  generic
(
    EXAMPLE_SIMULATION                      : integer   := 0
);
      port(
      -- Transceiver Interface
      ---------------------

      gtrefclk_p               : in  std_logic;                       
      gtrefclk_n               : in  std_logic;                      

      gtrefclk_out             : out std_logic;                        
      gtrefclk_bufg_out        : out std_logic;
      
      txp                  : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
      txn                  : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
      rxp                  : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
      rxn                  : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.
      resetdone                : out std_logic;                           -- The GT transceiver has completed its reset cycle
      userclk_out              : out std_logic;                        
      userclk2_out             : out std_logic;                        
      rxuserclk_out              : out std_logic;                      
      rxuserclk2_out             : out std_logic;                       
      independent_clock_bufg : in std_logic;               
      pma_reset_out            : out std_logic;                           -- transceiver PMA reset signal
      mmcm_locked_out          : out std_logic;                           -- MMCM Locked
      -- GMII Interface
      -----------------
      gmii_txd             : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_tx_er           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.

      -- Management: Alternative to MDIO Interface
      --------------------------------------------

      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.


--      an_interrupt         : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
--      an_adv_config_vector : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
--      an_restart_config    : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0

      -- General IO's
      ---------------
      status_vector        : out std_logic_vector(15 downto 0); -- Core status.
      reset                : in std_logic;                     -- Asynchronous reset for entire core.
  
      signal_detect        : in std_logic;                      -- Input from PMD to indicate presence of optical input.

      gt0_qplloutclk_out     : out std_logic;
      gt0_qplloutrefclk_out  : out std_logic

      );
   end component;
   
---------------------------------------------------------------------------------------------------------------
component transmit_fsm is
   port (clk_i :         in   std_logic;
         start_i :       in   std_logic;
         reset_i :       in   std_logic;
	     MAC_src_addr_i :  in   std_logic_vector(47 downto 0);
	     MAC_dst_addr_i :  in   std_logic_vector(47 downto 0);
		 IP_src_addr_i :  in   std_logic_vector(31 downto 0);
		 IP_dst_addr_i :  in   std_logic_vector(31 downto 0);
		 
		 global_TS: in std_logic_vector (63 downto 0);
			
		 counter24bit_in:  in   std_logic_vector(23 downto 0);
		 piggy_mounted: in STD_LOGIC;
		 empty_base:  in STD_LOGIC;
		 empty_piggy:  in STD_LOGIC;
			
		 fr_length_i :  in   std_logic_vector(15 downto 0);  -- in Bytes
		 fr_identification_i:  in   std_logic_vector(15 downto 0);
		 fr_flags_i :  in   std_logic_vector(2 downto 0); -- 2 .. don't fragment     1 .. more fragments
		 fr_number_i	:  in   std_logic_vector(12 downto 0);
			
			
		 tr_fifo_payload_base:      in   std_logic_vector(31 downto 0);
		 tr_fifo_readack_base:		 out  std_logic;
		 tr_fifo_payload_piggy:      in   std_logic_vector(31 downto 0);
		 tr_fifo_readack_piggy:		 out  std_logic;
		 tr_fifo_pause: in std_logic;
		 
		 send_UDP_active:		out  std_logic;
			
         ff_tx_data_o :         out  std_logic_vector(7 downto 0);  
         ff_tx_valid_o :        out  std_logic;
         ff_tx_last_o :         out  std_logic);
 		
end component;
---------------------------------------------------------------------------------------------------------------
component fifo_generator_0 IS
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END component;

component GBE_rx_fifo IS
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END component;

---------------------------------------------------------------------------------------------------------------

component check_for_arp_request is

	port 
	(
		clk		   : in std_logic;
		sop_reset	: in std_logic;
		eop_reset	: in std_logic;
		rx_addr_i	: in std_logic_vector (7 downto 0);
		rx_data_i	: in std_logic_vector (7 downto 0);
		
		IP_src_addr_i :  in   std_logic_vector(31 downto 0);
		
		tell_MAC_out: out std_logic_vector (47 downto 0);
		tell_IPaddr_out: out std_logic_vector (31 downto 0);
	   
		TP_out: out std_logic_vector (7 downto 0);	
		arp_out	: out std_logic
	);

 end component;
 
 ---------------------------------------------------------------------------------------------------------------
 
component transmit_arp_reply is
   port (clk_i :         in   std_logic;
         start_i :       in   std_logic;
         reset_i :       in   std_logic;
		 MAC_src_addr_i :  in   std_logic_vector(47 downto 0);
		 tell_MAC_addr_i :  in   std_logic_vector(47 downto 0);
		 IP_src_addr_i :  in   std_logic_vector(31 downto 0);
		 tell_IPaddr_i :  in   std_logic_vector(31 downto 0);
		
         ff_tx_data_o :         out  std_logic_vector(7 downto 0);  
         ff_tx_valid_o :        out  std_logic;
         ff_tx_last_o :         out  std_logic);
 		
end component transmit_arp_reply;
---------------------------------------------------------------------------------------------------------------
component check_for_ping_request is
 port ( clk		    : in std_logic;
		sop_reset	: in std_logic;
		eop_reset	: in std_logic;
		rx_addr_i	: in std_logic_vector (7 downto 0);
		rx_data_i	: in std_logic_vector (7 downto 0);
		
		IP_src_addr_i :  in   std_logic_vector(31 downto 0);
		IP_dst_addr_i :  in   std_logic_vector(31 downto 0);
		
		length_out: out std_logic_vector (15 downto 0);
		id_out: out std_logic_vector (15 downto 0);
		sequence_out: out std_logic_vector (15 downto 0);
		icmp_timestamp_out: out std_logic_vector (63 downto 0);
		icmp_csum_out: out std_logic_vector (15 downto 0);
	
		TP_out: out std_logic_vector (7 downto 0);	
		ping_out	: out std_logic );
end component;
-------------------------------------------------------------------------------------------------

component transmit_ping_reply is
   port (clk_i :         in   std_logic;
         start_i :       in   std_logic;
         reset_i :       in   std_logic;
         MAC_src_addr_i :  in   std_logic_vector(47 downto 0);
         MAC_dst_addr_i :  in   std_logic_vector(47 downto 0);
         IP_src_addr_i :  in   std_logic_vector(31 downto 0);
         IP_dst_addr_i :  in   std_logic_vector(31 downto 0);
         length_i:  in   std_logic_vector(15 downto 0);
         id_i :  in   std_logic_vector(15 downto 0);
         sequence_i :  in   std_logic_vector(15 downto 0);
         icmp_timestamp_i: in std_logic_vector (63 downto 0);
         icmp_csum_i: in std_logic_vector (15 downto 0);
         
         rdack_receive_fifo: out  std_logic;
         receive_fifo_data:  in   std_logic_vector(7 downto 0);
        			
         ff_tx_data_o :         out  std_logic_vector(7 downto 0);  
         ff_tx_valid_o :        out  std_logic;
         ff_tx_last_o :         out  std_logic);
 		
end component transmit_ping_reply;

-------------------------------------------------------------------------------------------------


    signal s_USRCLK,s_USRCLK_gbuf, s_clk_gbuf, s_in_clk, s_SI5324_clock: STD_LOGIC;
    
    signal del_tmp:  STD_LOGIC_VECTOR ( 1024 downto 0 );
      
    signal glbl_clk_ibufg       : std_logic;
    signal independent_clock    : std_logic;
    signal clkfb                : std_logic;
    signal userclk              : std_logic;
    signal gtrefclk_befjit, s_gtrefclk_aftjit, s_gtrefclk_p, s_gtrefclk_n, glbl_clk_150MHz, s_gtrefclk_bufg_out, s_gtrefclk_out  : std_logic;
    
    signal clk_enable           : std_logic;
    signal gtx_clk              : std_logic;
    signal speedis10100         : std_logic;
    signal speedis100           : std_logic;
    
    signal s_gmii_txd, s_gmii_txd_p, s_gmii_txd_pp, TP_gmii_txd, TPP_gmii_txd : std_logic_vector (7 downto 0);
    signal s_gmii_tx_en, TP_gmii_tx_en, TPP_gmii_tx_en : std_logic;
    signal s_gmii_tx_er, TP_gmii_tx_er, TPP_gmii_tx_er : std_logic;
    
    signal s_gmii_rxd             : std_logic_vector (7 downto 0);
    signal s_gmii_rx_dv           : std_logic;
    signal s_gmii_rx_er           : std_logic;
     
    signal mdc                  : std_logic;
    signal mdio_i               : std_logic;
    signal mdio_o               : std_logic;
    
    signal s_REG1_out           : std_logic_vector (31 downto 0);
    signal s_REG1_in            : std_logic_vector (31 downto 0);
    
    signal s_CO: std_logic_vector (3 downto 0);
    
    signal s_ff_tx_data_o :       std_logic_vector(7 downto 0);  
    signal s_ff_out_txdata, s_ff_in_txdata, s_ff_out_txdata_g:       std_logic_vector(9 downto 0);  
    signal s_start_transmit, s_ff_tx_valid_o, s_ff_tx_last_o, s_ff_empty, s_transmit_fifo_reset  :std_logic;
    signal s_glbl_rstn: std_logic; 
    
    signal s_not_restart_config, s_userclk_out, s_txmac_aclk, s_txmac_aclk_p, s_txmac_ready, s_txmac_error, s_reset_done : std_logic;
    signal s_pma_reset_out, s_mmcm_locked_out, s_gmii_isolate, s_an_interrupt: std_logic;
    signal s_status_vector: STD_LOGIC_VECTOR ( 19 downto 0 );
    signal s_GPIO1_in: STD_LOGIC_VECTOR ( 31 downto 0 );
    signal s_GPIO1_out: STD_LOGIC_VECTOR ( 31 downto 0 );
    
    signal s_mac_rx_data, s_mac_rx_data_pp, s_mac_rx_data_p, s_rx_addr, s_type: STD_LOGIC_VECTOR (7 downto 0);
    signal s_mac_rx_clk, s_mac_rx_clk_p, s_mac_rx_tvalid, s_mac_rx_tlast,s_mac_rx_tstart  : std_logic;
    signal s_ip_src_addr: STD_LOGIC_VECTOR ( 31 downto 0 );
    
    signal s_tell_MAC_out, s_mac_src_addr: STD_LOGIC_VECTOR (47 downto 0);
	signal s_tell_IPaddr_out: STD_LOGIC_VECTOR ( 31 downto 0 );
	signal s_arp_request_detected: std_logic;
	
	signal s_UDP_tx_data_o: STD_LOGIC_VECTOR(7 downto 0);
    signal s_UDP_tx_valid_o, s_UDP_tx_last_o : std_logic; 
    
    signal s_ARP_tx_data_o: STD_LOGIC_VECTOR(7 downto 0);
    signal s_ARP_tx_valid_o, s_ARP_tx_last_o : std_logic; 
    
    signal s_PING_tx_data_o: STD_LOGIC_VECTOR(7 downto 0);
    signal s_PING_tx_valid_o, s_PING_tx_last_o : std_logic; 
    
    signal s_IPbus_tx_data_o: STD_LOGIC_VECTOR(7 downto 0);
    signal s_IPbus_tx_valid_o, s_IPbus_tx_last_o : std_logic; 
    
    signal s_PING_length, s_PING_id, s_PING_sequence,s_icmp_csum: STD_LOGIC_VECTOR(15 downto 0);
    signal  s_PINGrequest_detected: std_logic; 
	signal s_PING_word_0, s_PING_word_1, s_PING_word_2, s_PING_word_3, s_PING_word_4, s_PING_word_5, s_PING_word_6, s_PING_word_7: STD_LOGIC_VECTOR(31 downto 0);
	signal s_PING_word_8, s_PING_word_9, s_PING_word_a, s_PING_word_b, s_PING_word_c, s_PING_word_d, s_PING_word_e, s_PING_word_f: STD_LOGIC_VECTOR(31 downto 0);
	signal s_PING_TP: STD_LOGIC_VECTOR(7 downto 0);
	signal s_icmp_timestamp:STD_LOGIC_VECTOR(63 downto 0);
	
	signal s_UDP_package_counter: STD_LOGIC_VECTOR(23 downto 0);
    
    signal s_rx_axi_rstn, s_transmit_start: std_logic; 
    signal s_rx_fifo_empty, s_ping_reply_rd: std_logic; 
    signal s_rx_fifo_out, s_ping_reply_q: STD_LOGIC_VECTOR(7 downto 0);
    
    signal s_empty_base, s_empty_piggy, s_send_UDP_active: std_logic;

   


begin

 process(s_txmac_aclk)  ---pedge transmit start
      variable pipe: std_logic_vector(1 to 2);
      begin
        if ( rising_edge(s_txmac_aclk) ) then  s_transmit_start <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:= transmit_start & pipe(1) ; end if;       
    end process;
    
 
 --s_transmit_start <= transmit_start;
 
 s_mac_src_addr <= x"54_60_6e_11_02_01";
 s_ip_src_addr <= (x"c0_a8_c9_0" & "00" & IP_addr_2LSBs(1 downto 0))   when (IP_addr_28MSBs = x"0000000")   else    (IP_addr_28MSBs & "00" & IP_addr_2LSBs);
 --s_ip_src_addr <= x"c0_a8_c9_0" & "00" & IP_addr_2LSBs(1 downto 0);  -- 192.168.201.001  IP_addr_2LSBs(1 downto 0) = dip_switches_4bits_tri_i(3 downto 2)
 
 s_glbl_rstn <= not(glbl_rst); 
 s_rx_axi_rstn <= not(glbl_rst);--not(glbl_rst or s_PINGrequest_detected or s_arp_request_detected); --???????????????????????
  
 U1: tri_mode_ethernet_mac_1
 port map(
      gtx_clk             =>  s_gtrefclk_bufg_out,
      
      -- asynchronous reset
      glbl_rstn           => s_glbl_rstn,
      rx_axi_rstn         => s_rx_axi_rstn,
      tx_axi_rstn         => s_glbl_rstn,

      -- Receiver Interface
      ----------------------------

      rx_statistics_vector    => open,
      rx_statistics_valid     => open,

      rx_mac_aclk               => s_mac_rx_clk_p,
      rx_reset                  => open,
      rx_axis_mac_tdata         => s_mac_rx_data(7 downto 0),
      rx_axis_mac_tvalid        => s_mac_rx_tvalid,
      rx_axis_mac_tlast         => s_mac_rx_tlast,
      rx_axis_mac_tuser         => open,

      -- Transmitter Interface
      -------------------------------

      tx_ifg_delay               => "00000000",
      tx_statistics_vector       => open,
      tx_statistics_valid        => open,

      tx_mac_aclk                => s_txmac_aclk_p,
      tx_reset                   => open,
      tx_axis_mac_tdata          => s_ff_out_txdata_g(7 downto 0),
      tx_axis_mac_tvalid         => s_ff_out_txdata_g(8), 
      tx_axis_mac_tlast          => s_ff_out_txdata_g(9),
      tx_axis_mac_tuser          => "0",
      tx_axis_mac_tready         => s_txmac_ready,

      -- MAC Control Interface
      ------------------------
      pause_req                  => '0',
      pause_val                  => "0000000000000000",

      speedis100                => open,
      speedis10100              => open,
      -- GMII Interface
      -----------------
      gmii_txd                  => s_gmii_txd,
      gmii_tx_en                => s_gmii_tx_en,
      gmii_tx_er                => s_gmii_tx_er,
      gmii_rxd                  => s_gmii_rxd,
      gmii_rx_dv                => s_gmii_rx_dv,
      gmii_rx_er                => s_gmii_rx_er,

      -- Configuration Vector
      -----------------------
      rx_configuration_vector   => x"0000_0000_0000_0000_2812",--x"5460_6e11_0201_05ee_2012",
      tx_configuration_vector   => x"0000_0000_0000_0000_2012" --x"5460_6e11_0201_05ee_2012"
   );
   
  BUFG0_inst : BUFG port map ( O => s_txmac_aclk,  I => s_txmac_aclk_p  );
  BUFG1_inst : BUFG port map ( O => s_mac_rx_clk,  I => s_mac_rx_clk_p  );
   
 mac_tx_clock <= s_txmac_aclk;
 mac_rx_clock <= s_mac_rx_clk;


 U0 : gig_ethernet_pcs_pma_1 generic map ( EXAMPLE_SIMULATION => 0)
      port map(
      -- Transceiver Interface
      ---------------------

      gtrefclk_p               => gtrefclk_p, 
      gtrefclk_n               => gtrefclk_n,

      gtrefclk_out             => s_gtrefclk_out,
      gtrefclk_bufg_out        => s_gtrefclk_bufg_out,
      txp                      => txp,
      txn                      => txn,
      rxp                      => rxp,
      rxn                      => rxn,
      resetdone                => s_reset_done,
      userclk_out              => s_userclk_out,
      userclk2_out             => open,
      rxuserclk_out            => open,
      rxuserclk2_out           => open,
      independent_clock_bufg   => clk_200MHz_in,
     
      
      pma_reset_out            => s_pma_reset_out,
      mmcm_locked_out          => s_mmcm_locked_out,
      -- GMII Interface
      -----------------
      gmii_txd                 => TP_gmii_txd,         -- Transmit data from client MAC.            
      gmii_tx_en               => TP_gmii_tx_en,       -- Transmit control signal from client MAC.  
      gmii_tx_er               => TP_gmii_tx_er,        -- Transmit control signal from client MAC.  
      gmii_rxd                 => s_gmii_rxd,
      gmii_rx_dv               => s_gmii_rx_dv,
      gmii_rx_er               => s_gmii_rx_er,
      gmii_isolate             => s_gmii_isolate,

      -- Management: Alternative to MDIO Interface
      --------------------------------------------

      --configuration_vector     => "10010",--configuration_vector, loop back mode
      configuration_vector     => "10000",--configuration_vector,

--      an_interrupt             => s_an_interrupt,--an_interrupt,
--      an_adv_config_vector     => "1101100000000001",--an_adv_config_vector,
--      an_restart_config        => '0',--an_restart_config,

      -- General IO's
      ---------------
      status_vector             => s_status_vector(15 downto 0),
      reset                     => glbl_rst, --push button center

   

      signal_detect        => '1',--signal_detect,

      gt0_qplloutclk_out     => open,--gt0_qplloutclk_out,
      gt0_qplloutrefclk_out  => open--gt0_qplloutrefclk_out

      );
      
  
      --------------------------------------------------------------------------------------------------------------------------
  process(s_txmac_aclk)  ---pipelined buffer for testpins ---------------------------------------------------------------
  
   begin
     if ( rising_edge(s_mac_rx_clk) ) then  
       s_mac_rx_data_p <= s_mac_rx_data;
       s_mac_rx_data_pp <= s_mac_rx_data_p; 
     end if;       
  end process;
  ------------------------------------------------------------------------------------------------------
 
process (s_txmac_aclk) --package counter
begin
   if ( rising_edge(s_txmac_aclk) ) then  
      if (data_taking_enabled ='0') then   -----------------------------------------!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! change
            s_UDP_package_counter <= "000000000000000000000000";
      elsif (s_transmit_start ='1') then
            s_UDP_package_counter <= s_UDP_package_counter + 1;
      end if;
   end if;
end process;



receive_fifo_inst: GBE_rx_fifo
  PORT map (
    rst => s_mac_rx_tstart,
    wr_clk => s_mac_rx_clk,
    rd_clk  => s_txmac_aclk,
    din  => s_mac_rx_data(7 downto 0),
    wr_en => s_mac_rx_tvalid,
    rd_en => s_ping_reply_rd,
    dout => s_rx_fifo_out(7 downto 0),
    full => open,
    empty => s_rx_fifo_empty
  );

s_ping_reply_q(0) <= s_rx_fifo_out(0) and (not s_rx_fifo_empty);
s_ping_reply_q(1) <= s_rx_fifo_out(1) and (not s_rx_fifo_empty);
s_ping_reply_q(2) <= s_rx_fifo_out(2) and (not s_rx_fifo_empty);
s_ping_reply_q(3) <= s_rx_fifo_out(3) and (not s_rx_fifo_empty);
s_ping_reply_q(4) <= s_rx_fifo_out(4) and (not s_rx_fifo_empty);
s_ping_reply_q(5) <= s_rx_fifo_out(5) and (not s_rx_fifo_empty);
s_ping_reply_q(6) <= s_rx_fifo_out(6) and (not s_rx_fifo_empty);
s_ping_reply_q(7) <= s_rx_fifo_out(7) and (not s_rx_fifo_empty);
  
transmit_inst1: transmit_fsm  --transmit_fsm    transmit_fsm    transmit_fsm    transmit_fsm    transmit_fsm    transmit_fsm    transmit_fsm    transmit_fsm
   port map (clk_i  => s_txmac_aclk, -- s_gtrefclk_bufg_out,
         start_i => s_transmit_start,
         reset_i  => glbl_rst,
	     MAC_src_addr_i => s_mac_src_addr, 
	     MAC_dst_addr_i =>  s_tell_MAC_out(47 downto 0),-- x"18_03_73_28_66_2b",
		 IP_src_addr_i => s_ip_src_addr,
		 IP_dst_addr_i =>  s_tell_IPaddr_out(31 downto 0), --x"c0_a8_c9_10",
			
		 global_TS => global_TS(63 downto 0),
		
		 counter24bit_in => s_UDP_package_counter,--x"fedcab",
		 piggy_mounted => piggy_mounted,
		 empty_base => empty_base_in,
		 empty_piggy => empty_piggy_in,
			
		 fr_length_i =>  x"2000", -- Test 8192 Bytes  -- increment in steps of 8 bytes  x"0048", x"0050", x"0058" .....
		 fr_identification_i => x"00_00",
		 fr_flags_i  => "010", -- 2 .. don't fragment     1 .. more fragments
		 fr_number_i => "0000000000000",
			
			
		 tr_fifo_payload_base => data_base(31 downto 0),--x"da", --UDP test payload
		 tr_fifo_readack_base => read_ack_base,        --open,
		 tr_fifo_payload_piggy => data_piggy(31 downto 0),--x"da", --UDP test payload
		 tr_fifo_readack_piggy => read_ack_piggy,        --open,
		 tr_fifo_pause => '0',
		
		 send_UDP_active =>  s_send_UDP_active,
         
         ff_tx_data_o => s_UDP_tx_data_o(7 downto 0),
         ff_tx_valid_o => s_UDP_tx_valid_o, 
         ff_tx_last_o => s_UDP_tx_last_o );
         
 
  
--   ----------------------TRANSMIT MUX -------------------------------------------------
--	 process (s_txmac_aclk) begin  --stretch select signals
--      if (rising_edge(s_txmac_aclk)) then 
--		  s_wren_arp_p <= s_wren_arp;
--		  s_wren_ping_p <= s_wren_ping;
--		  s_wren_normal_p <= s_ff_tx_valid_o;
--		  s_wren_IPbus_p <= s_wren_IPbus;
--	   end if;
--	 end process;
	 
--	 s_wren_arp_stretched <= s_wren_arp_p or s_wren_arp;
--	 s_wren_ping_stretched <= s_wren_ping_p or s_wren_ping;
--	 s_wren_normal_stretched <= s_wren_normal_p or s_wren_normal;
--	 s_wren_IPbus_stretched <= s_wren_IPbus_p or s_wren_IPbus;
	 
	 process (s_txmac_aclk) 
	 begin
		if (rising_edge(s_txmac_aclk)) then --clk125
	      if (s_UDP_tx_valid_o ='1') then
			  s_ff_in_txdata <= s_UDP_tx_last_o & s_UDP_tx_valid_o & s_UDP_tx_data_o(7 downto 0);
              s_ff_tx_valid_o <= s_UDP_tx_valid_o;
			
			elsif (s_ARP_tx_valid_o ='1') then
			  s_ff_in_txdata <= s_ARP_tx_last_o & s_ARP_tx_valid_o & s_ARP_tx_data_o(7 downto 0);
              s_ff_tx_valid_o <= s_ARP_tx_valid_o;
			
			elsif (s_PING_tx_valid_o ='1') then
			  s_ff_in_txdata <= s_PING_tx_last_o & s_PING_tx_valid_o & s_PING_tx_data_o(7 downto 0);
              s_ff_tx_valid_o <= s_PING_tx_valid_o;
			
			elsif (s_IPbus_tx_valid_o ='1') then
			  s_ff_in_txdata <= s_IPbus_tx_last_o & s_IPbus_tx_valid_o & s_IPbus_tx_data_o(7 downto 0);
              s_ff_tx_valid_o <= s_IPbus_tx_valid_o;
			  
         else 
			  s_ff_in_txdata <= "0000000000";
			  s_ff_tx_valid_o <= '0';
        end if;
      end if;
   end process;
   ---------------------------------------------------------------------------------------

        
--  s_ff_in_txdata <= s_UDP_tx_last_o & s_UDP_tx_valid_o & s_UDP_tx_data_o(7 downto 0);
--  s_ff_tx_valid_o <= s_UDP_tx_valid_o;
     
  s_transmit_fifo_reset <= glbl_rst or s_mac_rx_tlast;
         
  transmit_fifo_inst:  fifo_generator_0
  PORT map(
    rst => s_transmit_fifo_reset,
    wr_clk => s_txmac_aclk,
    rd_clk => s_txmac_aclk,
    din => s_ff_in_txdata(9 downto 0),
    wr_en => s_ff_tx_valid_o, 
    rd_en => s_txmac_ready,
    dout =>  s_ff_out_txdata(9 downto 0),
    full => open,
    empty => s_ff_empty
  );

 	s_ff_out_txdata_g(0) <= s_ff_out_txdata(0) and (not s_ff_empty);
 	s_ff_out_txdata_g(1) <= s_ff_out_txdata(1) and (not s_ff_empty);	
 	s_ff_out_txdata_g(2) <= s_ff_out_txdata(2) and (not s_ff_empty);	
 	s_ff_out_txdata_g(3) <= s_ff_out_txdata(3) and (not s_ff_empty);	
 	s_ff_out_txdata_g(4) <= s_ff_out_txdata(4) and (not s_ff_empty);	
 	s_ff_out_txdata_g(5) <= s_ff_out_txdata(5) and (not s_ff_empty);	
 	s_ff_out_txdata_g(6) <= s_ff_out_txdata(6) and (not s_ff_empty);	
 	s_ff_out_txdata_g(7) <= s_ff_out_txdata(7) and (not s_ff_empty);	
 	s_ff_out_txdata_g(8) <= s_ff_out_txdata(8) and (not s_ff_empty);	
 	s_ff_out_txdata_g(9) <= s_ff_out_txdata(9) and (not s_ff_empty);	
 		

  process(s_mac_rx_clk)  ---pedge rxvalid ---------------------------------------------------------------
   variable pipe: std_logic_vector(1 to 2);
   begin
     if ( rising_edge(s_mac_rx_clk) ) then  s_mac_rx_tstart <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:= (s_mac_rx_tvalid and (not(s_mac_rx_tlast))) & pipe(1) ; end if;       
  end process;
  ------------------------------------------------------------------------------------------------------
 
process (s_mac_rx_clk) --rx_addr counter
	begin
		if (rising_edge(s_mac_rx_clk)) then
          if (s_mac_rx_tvalid = '1') then s_rx_addr<=s_rx_addr +1; else s_rx_addr<=x"00"; end if;
		end if;
	end process;


--=======================================================================================================================
 




ARP_chek_inst: check_for_arp_request 
port map (
		clk		 => s_mac_rx_clk,
		sop_reset => s_mac_rx_tstart,
		eop_reset => s_mac_rx_tlast,
		rx_addr_i => s_rx_addr,
		rx_data_i => s_mac_rx_data(7 downto 0),
		
		IP_src_addr_i => s_ip_src_addr(31 downto 0),
		
		tell_MAC_out => s_tell_MAC_out(47 downto 0),
		tell_IPaddr_out => s_tell_IPaddr_out(31 downto 0),
	   
		TP_out => s_type,	
		arp_out	=> s_arp_request_detected );
		
ARP_repl_inst: transmit_arp_reply
   port map (clk_i    => s_txmac_aclk,
             start_i  => s_arp_request_detected,
             reset_i  => glbl_rst,
		     MAC_src_addr_i => s_mac_src_addr,
		     tell_MAC_addr_i => s_tell_MAC_out,
		     IP_src_addr_i => s_ip_src_addr,
		     tell_IPaddr_i => s_tell_IPaddr_out,
		
             ff_tx_data_o  => s_ARP_tx_data_o(7 downto 0),
             ff_tx_valid_o => s_ARP_tx_valid_o, 
             ff_tx_last_o  => s_ARP_tx_last_o );



--=======================================================================================================================
 


PING_check_inst:check_for_ping_request 
 port map ( clk		    => s_mac_rx_clk,
		    sop_reset	=> s_mac_rx_tstart,
		    eop_reset	=> s_mac_rx_tlast,
		    rx_addr_i => s_rx_addr,
		    rx_data_i => s_mac_rx_data(7 downto 0),
		
		   IP_src_addr_i => s_ip_src_addr,
		   IP_dst_addr_i => s_tell_IPaddr_out,
		
		   length_out    => s_PING_length,
		   id_out        => s_PING_id,
		   sequence_out  => s_PING_sequence,
		   icmp_timestamp_out => s_icmp_timestamp,
		   icmp_csum_out => s_icmp_csum,

		
		   TP_out => s_PING_TP (7 downto 0),
		   ping_out	=> s_PINGrequest_detected  );
		   
CARRY4_inst : CARRY4
   port map (
      CO => s_CO(3 downto 0),         -- 4-bit carry out
      O => open,           -- 4-bit carry chain XOR data out
      CI => '0',         -- 1-bit carry cascade input
      CYINIT =>  s_PINGrequest_detected, -- 1-bit carry initialization
      DI => "0000",         -- 4-bit carry-MUX data in
      S => "1111"            -- 4-bit carry-MUX select input
   );

PING_reply_inst: transmit_ping_reply
   port map (clk_i    => s_txmac_aclk,
             start_i  => s_CO(0),--s_PINGrequest_detected,
             reset_i  => glbl_rst,
		     MAC_src_addr_i => s_mac_src_addr,
		     MAC_dst_addr_i => s_tell_MAC_out,
		     IP_src_addr_i => s_ip_src_addr,
		     IP_dst_addr_i => s_tell_IPaddr_out,
   
             length_i    => s_PING_length,
		     id_i        => s_PING_id,
		     sequence_i  => s_PING_sequence,
             icmp_timestamp_i => s_icmp_timestamp,
             icmp_csum_i => s_icmp_csum,
             
             rdack_receive_fifo=> s_ping_reply_rd,
             receive_fifo_data => s_ping_reply_q(7 downto 0),

        
             ff_tx_data_o  => s_PING_tx_data_o(7 downto 0),
             ff_tx_valid_o => s_PING_tx_valid_o, 
             ff_tx_last_o  => s_PING_tx_last_o );
			
 --=======================================================================================================================
 		

process (s_gtrefclk_bufg_out) --TP_reg
	begin
		if (rising_edge(s_gtrefclk_bufg_out)) then
          TPP_gmii_txd   <= TP_gmii_txd;    TP_gmii_txd   <= s_gmii_txd;
          TPP_gmii_tx_en <= TP_gmii_tx_en;  TP_gmii_tx_en <= s_gmii_tx_en;
          TPP_gmii_tx_er <= TP_gmii_tx_er;  TP_gmii_tx_er <= s_gmii_tx_er;
		end if;
	end process;

--GBE_TP_out(0) <= TPP_gmii_txd(0); --s_PING_word_c(0);--s_PING_tx_data_o(0);--s_arp_request_detected;
--GBE_TP_out(1) <= TP_gmii_txd(1); --s_PING_word_c(1);
--GBE_TP_out(2) <= TP_gmii_txd(2);--s_PING_word_c(2);
--GBE_TP_out(3) <= TP_gmii_txd(3);--s_PING_word_c(3);
--GBE_TP_out(4) <= TP_gmii_txd(4);
--GBE_TP_out(5) <= TP_gmii_txd(5);
--GBE_TP_out(6) <= TP_gmii_txd(6);
--GBE_TP_out(7) <= TP_gmii_txd(7);

GBE_TP_out(0) <= s_UDP_package_counter(0); --s_PING_word_c(0);--s_PING_tx_data_o(0);--s_arp_request_detected;
GBE_TP_out(1) <= s_UDP_package_counter(1); --s_PING_word_c(1);
GBE_TP_out(2) <= s_UDP_package_counter(2);--s_PING_word_c(2);
GBE_TP_out(3) <= s_UDP_package_counter(3);--s_PING_word_c(3);
GBE_TP_out(4) <= s_UDP_package_counter(4);
GBE_TP_out(5) <= s_UDP_package_counter(5);
GBE_TP_out(6) <= s_UDP_package_counter(6);
GBE_TP_out(7) <= s_UDP_package_counter(7);

status_vector_out(15 downto 0) <= s_status_vector(15 downto 0);
status_vector_out(16) <= s_reset_done;
status_vector_out(17) <= s_pma_reset_out;
status_vector_out(18) <= s_mmcm_locked_out;
status_vector_out(19) <= '0';

send_UDP_active <= s_send_UDP_active;
--GBE_tw_tp_out1 <= TPP_gmii_tx_en;
GBE_tw_tp_out1 <= s_send_UDP_active;--s_PINGrequest_detected;
GBE_tw_tp_out2 <= s_transmit_start;--s_arp_request_detected;

end Behavioral;
