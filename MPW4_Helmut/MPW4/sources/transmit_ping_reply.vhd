library  IEEE;
use      IEEE.std_logic_1164.all;
use 	 IEEE.STD_LOGIC_UNSIGNED.ALL;
use 	 ieee.numeric_std.all;


entity transmit_ping_reply is
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
 		
end transmit_ping_reply;



architecture rtl of transmit_ping_reply is


  type t_state is (waiting,
                   H_01, H_02, H_03, H_04,
                   H_11, H_12, H_13, H_14,
                   H_21, H_22, H_23, H_24,
                   H_31, H_32, H_33, H_34,
                   H_41, H_42, H_43, H_44,
                   H_51, H_52, H_53, H_54,
                   H_61, H_62, H_63, H_64,
                   H_71, H_72, H_73, H_74,
                   H_81, H_82, H_83, H_84,
                   H_91, H_92, H_93, H_94,
                   H_101, H_102, H_103, H_104,
                   H_111, H_112, H_113, H_114,
                   H_121, H_122, H_123, H_124,
                   
				   payload_11, payload_12, payload_13, payload_14,
				   payload_21, payload_22, payload_23, payload_24,
				   payload_31, payload_32, payload_33, payload_34,
				   payload_41, payload_42, payload_43, payload_44, 
				   payload_51, payload_52, payload_53, payload_54,
				   payload_61, payload_62, payload_63, payload_64,
				   payload_71, payload_72, payload_73, payload_74,
				   payload_81, payload_82, payload_83, payload_84,
				   payload_91, payload_92, payload_93, payload_94,
				   payload_101, payload_102, payload_103, payload_104,
				   payload_111, payload_112, payload_113, payload_114,
				   payload_121, payload_122, payload_123, payload_124,
				   payload_131, payload_132, payload_133, payload_134,
                   
                   eop1, eop2, eop3, eop4,
                   terminate);
		
		
  signal s_state : t_state;
  
  signal bytes : std_logic_vector(11 downto 0);
  
  signal s_VL_TS: std_logic_vector (15 downto 0):=x"45_00";
  signal s_LENGTH_1: std_logic_vector (15 downto 0);
 
  signal s_TLTY: std_logic_vector (15 downto 0):=x"80_01";
  signal s_CHKPH: std_logic_vector (15 downto 0):=x"00_00";
	
  signal s_sum1: std_logic_vector (23 downto 0);
  signal s_sum2: std_logic_vector (23 downto 0);
  signal s_sum: std_logic_vector (27 downto 0);
  signal s_csum: std_logic_vector (27 downto 0);
  signal s_csum_final: std_logic_vector (15 downto 0);
  
  signal s_ICMP_sum1: std_logic_vector (27 downto 0);
  signal s_ICMP_sum1_linux_ping : std_logic_vector (27 downto 0);
  signal s_ICMP_csum: std_logic_vector (27 downto 0);
  signal s_ICMP_csum_linux_ping: std_logic_vector (27 downto 0);
  signal s_ICMP_csum_final: std_logic_vector (15 downto 0);
  
  signal s_data_word_0_in, s_data_word_1_in, s_data_word_2_in, s_data_word_3_in, s_data_word_4_in, s_data_word_5_in, s_data_word_6_in, s_data_word_7_in: std_logic_vector (31 downto 0);
  signal s_data_word_8_in, s_data_word_9_in, s_data_word_a_in, s_data_word_b_in, s_data_word_c_in, s_data_word_d_in, s_data_word_e_in, s_data_word_f_in: std_logic_vector (31 downto 0);
  
begin    


  s_LENGTH_1 <= length_i;
  --s_LENGTH_1 <= x"00_54"; --0x1c + 56
  --s_LENGTH_1 <= x"00_4c"; --0x1c + 48 
  --s_LENGTH_1 <= x"00_3c"; --0x1c + 32 
  --s_LENGTH_2 <= x"00_28"; --0x08 + 32
 
  -- IP_header_crc ----------------------------------------
  s_sum1 <= (x"00" & s_VL_TS) + (x"00" & s_LENGTH_1)  + (x"00" & x"00_00")+ (x"00" & x"40_00")+ (x"00" & s_TLTY);
  s_sum2 <= (x"00" & IP_src_addr_i(31 downto 16)) + (x"00" & IP_src_addr_i(15 downto 0))  + (x"00" & IP_dst_addr_i(31 downto 16))+ (x"00" & IP_dst_addr_i(15 downto 0));
  s_sum  <= (x"0" & s_sum1) + (x"0" & s_sum2); 
  
  s_csum <= s_sum + (x"0000" & s_sum(27 downto 16)); 
  s_csum_final <= s_csum(15 downto 0) xor x"ffff";
  -----------------------------------------------------



p_ctrl: process (clk_i, reset_i, start_i)
begin  -- process p_serin
  if (reset_i = '1') then               -- asynchronous reset (active high)
    s_state <= waiting;
    ff_tx_data_o <=  x"00";
    ff_tx_valid_o <= '0';
    ff_tx_last_o <= '0';
   
  elsif rising_edge(clk_i) then  -- rising clock edge
    case s_state is
      
		
        when H_01 =>    ff_tx_data_o <=  MAC_dst_addr_i(47 downto 40);		ff_tx_valid_o <= '1';	  s_state <= H_02;
        when H_02 =>    ff_tx_data_o <=  MAC_dst_addr_i(39 downto 32);		                          s_state <= H_03;
        when H_03 =>    ff_tx_data_o <=  MAC_dst_addr_i(31 downto 24);				                  s_state <= H_04;
        when H_04 =>    ff_tx_data_o <=  MAC_dst_addr_i(23 downto 16);				                  s_state <= H_11;
        when H_11 =>	ff_tx_data_o <=  MAC_dst_addr_i(15 downto  8);								  s_state <= H_12;
        when H_12 =>	ff_tx_data_o <=  MAC_dst_addr_i( 7 downto  0);								  s_state <= H_13;
        
        when H_13 =>    ff_tx_data_o <=  MAC_src_addr_i(47 downto 40);		                          s_state <= H_14;
        when H_14 =>    ff_tx_data_o <=  MAC_src_addr_i(39 downto 32);	rdack_receive_fifo <= '1';			                  s_state <= H_21;
        when H_21 =>    ff_tx_data_o <=  MAC_src_addr_i(31 downto 24);				                  s_state <= H_22;
        when H_22 =>    ff_tx_data_o <=  MAC_src_addr_i(23 downto 16);				                  s_state <= H_23;
        when H_23 =>	ff_tx_data_o <=  MAC_src_addr_i(15 downto  8);								  s_state <= H_24;
        when H_24 =>	ff_tx_data_o <=  MAC_src_addr_i( 7 downto  0);								  s_state <= H_31;
        
        when H_31 =>	ff_tx_data_o <=  x"08";                        								  s_state <= H_32;
        when H_32 =>	ff_tx_data_o <=  x"00";                        								  s_state <= H_33;
        when H_33 =>	ff_tx_data_o <=  s_VL_TS(15 downto 8);        								  s_state <= H_34;
        when H_34 =>	ff_tx_data_o <=  s_VL_TS( 7 downto 0);        								  s_state <= H_41;
        
        when H_41 =>	ff_tx_data_o <=  s_LENGTH_1(15 downto 8);          							  s_state <= H_42;
        when H_42 =>	ff_tx_data_o <=  s_LENGTH_1( 7 downto 0);          							  s_state <= H_43;
        when H_43 =>	ff_tx_data_o <=  x"00";        					                			  s_state <= H_44;
        when H_44 =>	ff_tx_data_o <=  x"00";        						                		  s_state <= H_51;
        
        when H_51 =>	ff_tx_data_o <=  x"40";         							                  s_state <= H_52;
        when H_52 =>	ff_tx_data_o <=  x"00";           							                  s_state <= H_53;
        when H_53 =>	ff_tx_data_o <=  s_TLTY(15 downto 8);        					              s_state <= H_54;
        when H_54 =>	ff_tx_data_o <=  s_TLTY( 7 downto 0);        						          s_state <= H_61;
        
        when H_61 =>	ff_tx_data_o <=  s_csum_final(15 downto 8);         					      s_state <= H_62;
        when H_62 =>	ff_tx_data_o <=  s_csum_final( 7 downto 0);           		                  s_state <= H_63;
        
        when H_63 =>	ff_tx_data_o <=  IP_src_addr_i(31 downto 24);        					      s_state <= H_64;
        when H_64 =>	ff_tx_data_o <=  IP_src_addr_i(23 downto 16);        						  s_state <= H_71;
        when H_71 =>	ff_tx_data_o <=  IP_src_addr_i(15 downto  8);        					      s_state <= H_72;
        when H_72 =>	ff_tx_data_o <=  IP_src_addr_i( 7 downto  0);        						  s_state <= H_73;
        
        when H_73 =>	ff_tx_data_o <=  IP_dst_addr_i(31 downto 24);        					      s_state <= H_74;
        when H_74 =>	ff_tx_data_o <=  IP_dst_addr_i(23 downto 16);        						  s_state <= H_81;
        when H_81 =>	ff_tx_data_o <=  IP_dst_addr_i(15 downto  8);        					      s_state <= H_82;
        when H_82 =>	ff_tx_data_o <=  IP_dst_addr_i( 7 downto  0);        						  s_state <= H_83;
        
        when H_83 =>	ff_tx_data_o <=  x"00";         							                  s_state <= H_84;
        when H_84 =>	ff_tx_data_o <=  x"00";           							                  s_state <= H_91; 
        
        when H_91 =>	ff_tx_data_o <=  icmp_csum_i(15 downto 8);          				          s_state <= H_92;
        when H_92 =>	ff_tx_data_o <=  icmp_csum_i(7 downto 0);            	                      s_state <= H_93;
        
        when H_93 =>	ff_tx_data_o <=  id_i(15 downto 8);         				                  s_state <= H_94;
        when H_94 =>	ff_tx_data_o <=  id_i( 7 downto 0);           	                              s_state <= H_101;
        
        when H_101 =>	ff_tx_data_o <=  sequence_i(15 downto 8);         				              s_state <= H_102;
        when H_102 =>	ff_tx_data_o <=  sequence_i( 7 downto 0);           	                      s_state <= H_111; 
        
        when H_111 =>	ff_tx_data_o <=  icmp_timestamp_i(63 downto 56);                              s_state <= H_112;   ---------------8 bytes  ICMP timestamp
        when H_112 =>	ff_tx_data_o <=  icmp_timestamp_i(55 downto 48);                              s_state <= H_113;
        when H_113 =>	ff_tx_data_o <=  icmp_timestamp_i(47 downto 40);                              s_state <= H_114;
        when H_114 =>	ff_tx_data_o <=  icmp_timestamp_i(39 downto 32);                              s_state <= H_121;
        when H_121 =>	ff_tx_data_o <=  icmp_timestamp_i(31 downto 24);                              s_state <= H_122;
        when H_122 =>	ff_tx_data_o <=  icmp_timestamp_i(23 downto 16);                              s_state <= H_123;
        when H_123 =>	ff_tx_data_o <=  icmp_timestamp_i(15 downto  8);                              s_state <= H_124;
        when H_124 =>	ff_tx_data_o <=  icmp_timestamp_i( 7 downto  0);                              s_state <= payload_11;

        when payload_11 =>	ff_tx_data_o <=  receive_fifo_data;        				      s_state <= payload_12;
        when payload_12 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_13; 
        when payload_13 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_14;
        when payload_14 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_21; 
        
        when payload_21 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_22;
        when payload_22 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_23; 
        when payload_23 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_24;
        when payload_24 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_31; 
        
        when payload_31 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_32;
        when payload_32 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_33; 
        when payload_33 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_34;
        when payload_34 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_41; 
        
        when payload_41 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_42;
        when payload_42 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_43; 
        when payload_43 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_44;
        when payload_44 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_51; 
        
        when payload_51 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_52;
        when payload_52 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_53; 
        when payload_53 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_54;
        when payload_54 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_61; 
        
        when payload_61 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_62;
        when payload_62 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_63; 
        when payload_63 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_64;
        when payload_64 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_71; 
        
        when payload_71 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_72;
        when payload_72 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_73; 
        when payload_73 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_74;
        when payload_74 =>	ff_tx_data_o <=  receive_fifo_data;  if (length_i = x"00_54") then s_state <= payload_81; else      s_state <= eop1; end if;  
        
        when payload_81 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_82;
        when payload_82 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_83; 
        when payload_83 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_84;
        when payload_84 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_91; 
        
        when payload_91 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_92;
        when payload_92 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_93; 
        when payload_93 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_94;
        when payload_94 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_101; 
        
        when payload_101 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_102;
        when payload_102 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_103; 
        when payload_103 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_104;
        when payload_104 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_111; 
        
        when payload_111 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_112;
        when payload_112 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_113; 
        when payload_113 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_114;
        when payload_114 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_121; 
        
        when payload_121 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_122;
        when payload_122 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_123; 
        when payload_123 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_124;
        when payload_124 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_131; 
        
        when payload_131 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_132;
        when payload_132 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= payload_133; 
        when payload_133 =>	ff_tx_data_o <=  receive_fifo_data;         				  s_state <= payload_134;
        when payload_134 =>	ff_tx_data_o <=  receive_fifo_data;           	              s_state <= eop1; 
        
        when eop1 => if (length_i = x"00_54") then ff_tx_data_o <=  receive_fifo_data; else  ff_tx_data_o <=  receive_fifo_data; end if;	 s_state <= eop2;
        when eop2 => if (length_i = x"00_54") then ff_tx_data_o <=  receive_fifo_data; else  ff_tx_data_o <=  receive_fifo_data; end if;	 s_state <= eop3;
        when eop3 => if (length_i = x"00_54") then ff_tx_data_o <=  receive_fifo_data; else  ff_tx_data_o <=  receive_fifo_data; end if;	 s_state <= eop4;
        when eop4 => if (length_i = x"00_54") then ff_tx_data_o <=  receive_fifo_data; else  ff_tx_data_o <=  receive_fifo_data; end if;	 ff_tx_last_o <= '1';	s_state <= terminate ;	
    
		when terminate => ff_tx_data_o <=  x"00";	        ff_tx_valid_o <= '0';	 	  ff_tx_last_o <= '0';		rdack_receive_fifo <= '0';	s_state <= waiting ;
      ---------------------------------------------------------------------------------------------------------------------------------------------------
      
      
      when others =>
        if start_i = '1' then
          -- START Condition detected
          s_state <= H_01;
          
        end if;
    end case;
  end if;
end process p_ctrl;

end rtl;