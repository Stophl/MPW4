library ieee;
use ieee.std_logic_1164.all;
use 	 IEEE.STD_LOGIC_UNSIGNED.ALL;
use 	 ieee.numeric_std.all;

entity check_for_ping_request is
	
	port 
	(
		clk		   : in std_logic;
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
		ping_out	: out std_logic
	);

end entity;

architecture rtl of check_for_ping_request is

	signal s_rx_addr_i, s_rx_data_i: std_logic_vector (7 downto 0);
	
	signal s_protocol: std_logic_vector (7 downto 0);
	signal s_IP_src_addr: std_logic_vector (31 downto 0);
	signal s_IP_dst_addr: std_logic_vector (31 downto 0);
	signal s_type: std_logic_vector (7 downto 0);
	signal s_code: std_logic_vector (7 downto 0);
	signal s_ping: std_logic;
	
	signal s_id: std_logic_vector (15 downto 0);
	
	signal s_ICMP_sum1: std_logic_vector (27 downto 0);
    signal s_ICMP_sum1_linux_ping : std_logic_vector (27 downto 0);
    signal s_ICMP_csum_a: std_logic_vector (27 downto 0);
    signal s_ICMP_csum: std_logic_vector (27 downto 0);
    signal s_ICMP_csum_final: std_logic_vector (15 downto 0);

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
		s_protocol <= x"00";
		s_IP_src_addr(31 downto 0) <= x"00_00_00_00";
		s_IP_dst_addr(31 downto 0) <= x"00_00_00_00";
		s_type <= x"00";
		s_code <= x"00";
		

		

	elsif (rising_edge(clk)) then
	      
	      if (s_rx_addr_i = x"10")  then length_out(15 downto 8) <= s_rx_data_i; end if;
	      if (s_rx_addr_i = x"11")  then length_out( 7 downto 0) <= s_rx_data_i; end if;
	      
		  if (s_rx_addr_i = x"17")  then s_protocol( 7 downto 0) <= s_rx_data_i; end if;
		  
		  if (s_rx_addr_i = x"1a")  then s_IP_dst_addr(31 downto 24) <= s_rx_data_i; end if;
		  if (s_rx_addr_i = x"1b")  then s_IP_dst_addr(23 downto 16) <= s_rx_data_i; end if;
		  if (s_rx_addr_i = x"1c")  then s_IP_dst_addr(15 downto  8) <= s_rx_data_i; end if;
		  if (s_rx_addr_i = x"1d")  then s_IP_dst_addr( 7 downto  0) <= s_rx_data_i; end if;
		  
		  if (s_rx_addr_i = x"1e")  then s_IP_src_addr(31 downto 24) <= s_rx_data_i; end if;
		  if (s_rx_addr_i = x"1f")  then s_IP_src_addr(23 downto 16) <= s_rx_data_i; end if;
		  if (s_rx_addr_i = x"20")  then s_IP_src_addr(15 downto  8) <= s_rx_data_i; end if;
		  if (s_rx_addr_i = x"21")  then s_IP_src_addr( 7 downto  0) <= s_rx_data_i; end if;
		  
		  if (s_rx_addr_i = x"22")  then s_type( 7 downto  0) <= s_rx_data_i; end if;
		  if (s_rx_addr_i = x"23")  then s_code( 7 downto  0) <= s_rx_data_i; end if;
		  
		  if (s_rx_addr_i = x"24")  then
		    s_ICMP_csum_a(27 downto 0) <= x"0_00_00_00";
		
          end if;
          
          -- s_ICMP_csum_a := s_ICMP_csum1_linux_ping 
		  if (s_rx_addr_i = x"26")  then id_out(15 downto 8) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"27")  then id_out( 7 downto 0) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  
		  if (s_rx_addr_i = x"28")  then sequence_out(15 downto 8) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"29")  then sequence_out( 7 downto 0) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  
		  if (s_rx_addr_i = x"2a")  then icmp_timestamp_out(63 downto 56) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00");  end if;   --ICMP timestamp
		  if (s_rx_addr_i = x"2b")  then icmp_timestamp_out(55 downto 48) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i);  end if;
		  if (s_rx_addr_i = x"2c")  then icmp_timestamp_out(47 downto 40) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00");  end if;
		  if (s_rx_addr_i = x"2d")  then icmp_timestamp_out(39 downto 32) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i);  end if;		  
		  if (s_rx_addr_i = x"2e")  then icmp_timestamp_out(31 downto 24) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00");  end if;
		  if (s_rx_addr_i = x"2f")  then icmp_timestamp_out(23 downto 16) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i);  end if;
		  if (s_rx_addr_i = x"30")  then icmp_timestamp_out(15 downto  8) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00");  end if;
		  if (s_rx_addr_i = x"31")  then icmp_timestamp_out( 7 downto  0) <= s_rx_data_i; s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i);  end if;	  
		 
	
		  if (s_rx_addr_i = x"32")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"33")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"34")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"35")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;		  
		  if (s_rx_addr_i = x"36")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"37")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"38")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"39")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;	  
		  if (s_rx_addr_i = x"3a")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"3b")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"3c")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"3d")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;	  
		  if (s_rx_addr_i = x"3e")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"3f")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"40")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"41")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;	  
		  if (s_rx_addr_i = x"42")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"43")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"44")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"45")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;  
		  if (s_rx_addr_i = x"46")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"47")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"48")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"49")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;	  
		  if (s_rx_addr_i = x"4a")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"4b")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"4c")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"4d")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if; 
		  if (s_rx_addr_i = x"4e")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"4f")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"50")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"51")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;  
		  if (s_rx_addr_i = x"52")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"53")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"54")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"55")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;  
		  if (s_rx_addr_i = x"56")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"57")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"58")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"59")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;	  
		  if (s_rx_addr_i = x"5a")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"5b")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"5c")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"5d")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;	  
		  if (s_rx_addr_i = x"5e")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"5f")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"60")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"61")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;	  
		  if (s_rx_addr_i = x"62")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"63")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"64")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"65")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;	  
		  if (s_rx_addr_i = x"66")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"67")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;
		  if (s_rx_addr_i = x"68")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (s_rx_data_i & x"00"); end if;
		  if (s_rx_addr_i = x"69")  then  s_ICMP_csum_a <= s_ICMP_csum_a + (x"00" & s_rx_data_i); end if;	  
		
		  
		
	end if;
   end process;

 s_ICMP_csum <= s_ICMP_csum_a + (x"0000" & s_ICMP_csum_a(27 downto 16)); 
 
	process (clk) begin
	  if (rising_edge(clk)) then
	     icmp_csum_out <= (s_ICMP_csum(15 downto 0) xor x"ffff");
	    -- if (s_protocol=x"01") then TP_out(0)<='1'; else TP_out(0)<='0'; end if;
		-- if (s_IP_src_addr = IP_src_addr_i) then TP_out(1)<='1'; else TP_out(1)<='0'; end if;
		-- if (s_IP_dst_addr = IP_dst_addr_i) then TP_out(2)<='1'; else TP_out(2)<='0'; end if;
		-- if (s_type=x"08") then TP_out(3)<='1'; else TP_out(3)<='0'; end if;
		-- if (s_code=x"00") then TP_out(4)<='1'; else TP_out(4)<='0'; end if;
		 
		 if ((s_protocol=x"01") and (s_IP_src_addr = IP_src_addr_i) and (s_IP_dst_addr = IP_dst_addr_i) and (s_type=x"08") and (s_code=x"00") ) then s_ping <='1'; else s_ping <='0'; end if;
	  
	  end if;
	end process;
	
	process(clk)  ---nedge of s_ping ----------------------------------------------------------------
   variable pipe: std_logic_vector(1 to 2);
   begin
     if ( rising_edge(clk) ) then  ping_out <= (pipe(1) xor pipe(2))  and  pipe(2); pipe:= s_ping & pipe(1) ; end if;       
   end process;
	
  
    TP_out(7 downto 0) <=  x"00";

end rtl;