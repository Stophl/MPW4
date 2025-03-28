library ieee;
use ieee.std_logic_1164.all;

entity check_for_arp_request is

	
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

end entity;

architecture rtl of check_for_arp_request is

	signal s_rx_addr_i, s_rx_data_i: std_logic_vector (7 downto 0);
	signal s_type: std_logic_vector (15 downto 0);
	signal s_IP_src_addr: std_logic_vector (31 downto 0);
	signal s_IP_tell_addr: std_logic_vector (31 downto 0);
	signal s_MAC_tell_addr: std_logic_vector (47 downto 0);

	signal s_arp,s_arp_p: std_logic;

begin

     process (clk) begin -- register  rx_addr_i rx_data_i
	  if (rising_edge(clk)) then
	     s_rx_addr_i <=  rx_addr_i(7 downto 0);
	     s_rx_data_i <=  rx_data_i(7 downto 0);
    end if;
   end process;

	process (clk, sop_reset, eop_reset)
	begin
	if ((sop_reset = '1') or (eop_reset = '1')) then
		s_type <= x"00_00";
		s_IP_src_addr(31 downto 0) <= x"00_00_00_00";
		

	elsif (rising_edge(clk)) then
	    if (s_rx_addr_i = x"0c")  then s_type(15 downto 8) <= s_rx_data_i; end if;
	    if (s_rx_addr_i = x"0d")  then s_type( 7 downto 0) <= s_rx_data_i; end if;
	    
	    if (s_rx_addr_i = x"16")  then s_MAC_tell_addr(47 downto 40) <= s_rx_data_i; end if;-- no reset !!
	    if (s_rx_addr_i = x"17")  then s_MAC_tell_addr(39 downto 32) <= s_rx_data_i; end if;-- no reset !!
	    if (s_rx_addr_i = x"18")  then s_MAC_tell_addr(31 downto 24) <= s_rx_data_i; end if;-- no reset !!
	    if (s_rx_addr_i = x"19")  then s_MAC_tell_addr(23 downto 16) <= s_rx_data_i; end if;-- no reset !!
	    if (s_rx_addr_i = x"1a")  then s_MAC_tell_addr(15 downto  8) <= s_rx_data_i; end if;-- no reset !!
	    if (s_rx_addr_i = x"1b")  then s_MAC_tell_addr( 7 downto  0) <= s_rx_data_i; end if;-- no reset !!
	    
	    if (s_rx_addr_i = x"1c")  then s_IP_tell_addr(31 downto 24) <= s_rx_data_i; end if;-- no reset !!
	    if (s_rx_addr_i = x"1d")  then s_IP_tell_addr(23 downto 16) <= s_rx_data_i; end if;-- no reset !!
	    if (s_rx_addr_i = x"1e")  then s_IP_tell_addr(15 downto  8) <= s_rx_data_i; end if;-- no reset !!
	    if (s_rx_addr_i = x"1f")  then s_IP_tell_addr( 7 downto  0) <= s_rx_data_i; end if;-- no reset !!
		
		if (s_rx_addr_i = x"26")  then s_IP_src_addr(31 downto 24) <= s_rx_data_i; end if;
		if (s_rx_addr_i = x"27")  then s_IP_src_addr(23 downto 16) <= s_rx_data_i; end if;
		if (s_rx_addr_i = x"28")  then s_IP_src_addr(15 downto  8) <= s_rx_data_i; end if;
		if (s_rx_addr_i = x"29")  then s_IP_src_addr( 7 downto  0) <= s_rx_data_i; end if; 	
			
	end if;
   end process;

	process (clk) begin
	  if (rising_edge(clk)) then
	  
	    if (s_type=x"08_06") then TP_out(0)<='1'; else TP_out(0)<='0'; end if;
		 if (s_IP_src_addr = IP_src_addr_i) then TP_out(1)<='1'; else TP_out(1)<='0'; end if;
		 
		 
		 if ((s_type=x"08_06") and (s_IP_src_addr = IP_src_addr_i)) then s_arp <='1'; else s_arp <='0'; end if;
	  
	  end if;
	end process;
	
	process(clk)  ---nedge of s_arp ----------------------------------------------------------------
   variable pipe: std_logic_vector(1 to 2);
   begin
     if ( rising_edge(clk) ) then  s_arp_p <= (pipe(1) xor pipe(2))  and  pipe(2); pipe:= s_arp & pipe(1) ; end if;       
   end process;
	
	----------------------------------------------------
	arp_out <= s_arp_p;
	
	process (clk) begin  -- store requesters addesses
   if (rising_edge(clk)) then
		if (s_arp_p= '1') then tell_MAC_out <= s_MAC_tell_addr; tell_IPaddr_out <= s_IP_tell_addr; end if;
	end if;
   end process;
	 
	-----------------------------------------------------------
	
	TP_out(7 downto 2) <= "000000";
	

end rtl;
