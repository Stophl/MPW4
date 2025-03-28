library  IEEE;
use      IEEE.std_logic_1164.all;
use 	 IEEE.STD_LOGIC_UNSIGNED.ALL;
use 	 ieee.numeric_std.all;



entity transmit_fsm is
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
		 tr_fifo_readack_base:		out  std_logic;
		 tr_fifo_payload_piggy:     in   std_logic_vector(31 downto 0);
		 tr_fifo_readack_piggy:		out  std_logic;
		 tr_fifo_pause: in std_logic;
		 
		 send_UDP_active:		out  std_logic;
			
         ff_tx_data_o :         out  std_logic_vector(7 downto 0);  
         ff_tx_valid_o :        out  std_logic;
         ff_tx_last_o :         out  std_logic);
 		
end transmit_fsm;



 architecture rtl of transmit_fsm is


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
				   UDP_H1, UDP_H2, UDP_H3, UDP_H4,
				   UDP_LENGTH1, UDP_LENGTH2, UDP_LENGTH3, UDP_LENGTH4, 
                   payload1, payload2, payload3, payload4, payload5, payload6, payload7, payload8, 
                   payld1, payld2, payld3, payld4,
                   rdack_base,
                   gts1, gts2, gts3, gts4, gts5, gts6,gts7,gts8,
                   eop1, eop2, eop3, eop4,
                   terminate);

		
  signal s_state : t_state;
  
 
  signal bytes : std_logic_vector(15 downto 0);
  
  signal s_VL_TS: std_logic_vector (15 downto 0):=x"45_00";
  signal s_LENGTH_1: std_logic_vector (15 downto 0);
  signal s_LENGTH_2: std_logic_vector (15 downto 0);
 
  signal s_TLTY: std_logic_vector (15 downto 0):=x"80_11";
  signal s_CHKPH: std_logic_vector (15 downto 0):=x"00_00";
	
  signal s_sum1: std_logic_vector (23 downto 0);
  signal s_sum2: std_logic_vector (23 downto 0);
  signal s_sum: std_logic_vector (27 downto 0);
  signal s_csum: std_logic_vector (27 downto 0);
  signal s_csum_final: std_logic_vector (15 downto 0);
  
  signal s_ff_tx_wren_o :std_logic;
  signal s_tr_fifo_payload: std_logic_vector (7 downto 0);
  signal s_allow_ack: std_logic:='0';
 
begin    
  --s_LENGTH_1 <= fr_length_i + x"20"; --0x1c + 4 (fa dc ee xx ) = 0x20
  --s_LENGTH_2 <= fr_length_i + x"0c"; --0x08 + 4 (fa dc ee xx ) = 0x0c
  
  s_LENGTH_1 <= fr_length_i + x"28"; --0x1c + 12 (fa dc ee xx ) = 0x20
  --s_LENGTH_1 <= fr_length_i + x"28" when (piggy_mounted = '0') else fr_length_i + x"20";
  --s_LENGTH_2 <= fr_length_i + x"14" when (piggy_mounted = '0') else fr_length_i + x"0c";
  s_LENGTH_2 <= fr_length_i + x"14"; --0x08 + 12 (fa dc ee xx ) = 0x0c
 
  -- IP_header_crc ----------------------------------------
  s_sum1 <= (x"00" & s_VL_TS) + (x"00" & s_LENGTH_1)  + (x"00" & fr_identification_i)+ (x"00" & fr_flags_i & fr_number_i)+ (x"00" & s_TLTY);
  s_sum2 <= (x"00" & IP_src_addr_i(31 downto 16)) + (x"00" & IP_src_addr_i(15 downto 0))  + (x"00" & IP_dst_addr_i(31 downto 16))+ (x"00" & IP_dst_addr_i(15 downto 0));
  s_sum  <= (x"0" & s_sum1) + (x"0" & s_sum2); 
  
  s_csum <= s_sum + (x"0000" & s_sum(27 downto 16)); 
  s_csum_final <= s_csum(15 downto 0) xor x"ffff";
  -----------------------------------------------------
  
  -- s_tr_fifo_payload <= tr_fifo_payload when (tr_fifo_pause ='0') else  x"ff"; 
  
  -- external MPW3 data fifo write_clock -> s_clk_TLU_pll_par  64MHz     read_clock -> s_txmac_aclk  125MHz !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

p_ctrl: process (clk_i, reset_i)
begin  -- process p_serin
  if (reset_i = '1') then               -- asynchronous reset (active high)
    s_state <= waiting;
    ff_tx_data_o <=  x"00";
    ff_tx_last_o <= '0';
    s_ff_tx_wren_o <= '0';
    tr_fifo_readack_base <= '0';
    tr_fifo_readack_piggy <= '0';
    s_allow_ack <= '0';
   
  elsif rising_edge(clk_i) then  -- rising clock edge
    case s_state is
	 
        when H_01 =>    ff_tx_data_o <= MAC_dst_addr_i(47 downto 40); 	 bytes <= x"0000";    s_ff_tx_wren_o <= '1';	send_UDP_active<='1';    s_state <= H_02;
        when H_02 =>    ff_tx_data_o <= MAC_dst_addr_i(39 downto 32); 		                    s_state <= H_11;
            
	    when H_11 =>	ff_tx_data_o <=  MAC_dst_addr_i(31 downto 24);					        s_state <= H_12;
	    when H_12 =>	ff_tx_data_o <=  MAC_dst_addr_i(23 downto 16);					        s_state <= H_13;
	    when H_13 =>	ff_tx_data_o <=  MAC_dst_addr_i(15 downto 8);					        s_state <= H_14;
	    when H_14 =>	ff_tx_data_o <=  MAC_dst_addr_i(7 downto 0);					        s_state <= H_21;
	    
		when H_21 =>    ff_tx_data_o <=  MAC_src_addr_i(47 downto 40);							s_state <= H_22;
		when H_22 =>    ff_tx_data_o <=  MAC_src_addr_i(39 downto 32);							s_state <= H_23;
		when H_23 =>    ff_tx_data_o <=  MAC_src_addr_i(31 downto 24);							s_state <= H_24;
		when H_24 =>    ff_tx_data_o <=  MAC_src_addr_i(23 downto 16);							s_state <= H_31;
		
		when H_31 =>	ff_tx_data_o <=  MAC_src_addr_i(15 downto 8);                           s_state <= H_32; 
		when H_32 =>	ff_tx_data_o <=  MAC_src_addr_i(7 downto 0);                            s_state <= H_33; 
		when H_33 =>	ff_tx_data_o <=  x"08";                                                 s_state <= H_34; 
		when H_34 =>	ff_tx_data_o <=  x"00";                                                 s_state <= H_41; 
		
		when H_41 =>    ff_tx_data_o <=  x"45"; 					            	            s_state <= H_42;
		when H_42 =>    ff_tx_data_o <=  x"00";						                            s_state <= H_43;
		when H_43 =>    ff_tx_data_o <=  s_LENGTH_1(15 downto 8);						        s_state <= H_44;
		when H_44 =>    ff_tx_data_o <=  s_LENGTH_1(7 downto 0); 						        s_state <= H_51;
		
		when H_51 =>	ff_tx_data_o <=  fr_identification_i(15 downto 8);						s_state <= H_52;
		when H_52 =>	ff_tx_data_o <=  fr_identification_i(7 downto 0);					    s_state <= H_53;
		when H_53 =>	ff_tx_data_o <=  fr_flags_i & fr_number_i(12 downto 8);			        s_state <= H_54;
		when H_54 =>	ff_tx_data_o <=  fr_number_i(7 downto 0);							    s_state <= H_61;
		
		when H_61 =>	ff_tx_data_o <=  x"80";												    s_state <= H_62;
		when H_62 =>	ff_tx_data_o <=  x"11";												    s_state <= H_63;
		when H_63 =>	ff_tx_data_o <=  s_csum_final(15 downto 8);							    s_state <= H_64;
		when H_64 =>	ff_tx_data_o <=  s_csum_final(7 downto 0);								s_state <= H_71;
		
		when H_71 =>	ff_tx_data_o <=  IP_src_addr_i(31 downto 24);							s_state <= H_72;
		when H_72 =>	ff_tx_data_o <=  IP_src_addr_i(23 downto 16);							s_state <= H_73;
		when H_73 =>	ff_tx_data_o <=  IP_src_addr_i(15 downto 8);							s_state <= H_74;
		when H_74 =>	ff_tx_data_o <=  IP_src_addr_i(7 downto 0);								s_state <= H_81;
		
		when H_81 =>	ff_tx_data_o <=  IP_dst_addr_i(31 downto 24);			 				s_state <= H_82;
		when H_82 =>	ff_tx_data_o <=  IP_dst_addr_i(23 downto 16);			  				s_state <= H_83;
		when H_83 =>	ff_tx_data_o <=  IP_dst_addr_i(15 downto 8);			  				s_state <= H_84;
		when H_84 =>	ff_tx_data_o <=  IP_dst_addr_i(7 downto 0);                         	s_state <= UDP_H1;
		
		when UDP_H1 =>        ff_tx_data_o <=  x"e8";					   						s_state <= UDP_H2;
		when UDP_H2 =>        ff_tx_data_o <=  x"12";					   						s_state <= UDP_H3;
		when UDP_H3 =>        ff_tx_data_o <=  x"c3";    				   						s_state <= UDP_H4;
		when UDP_H4 =>        ff_tx_data_o <=  IP_src_addr_i(7 downto 0);						s_state <= UDP_LENGTH1;
		
		when UDP_LENGTH1 =>   ff_tx_data_o <=  s_LENGTH_2(15 downto 8);				            s_state <= UDP_LENGTH2;
		when UDP_LENGTH2 =>   ff_tx_data_o <=  s_LENGTH_2(7 downto 0);				            s_state <= UDP_LENGTH3;
		when UDP_LENGTH3 =>   ff_tx_data_o <=  x"00";				                        	s_state <= UDP_LENGTH4;
		when UDP_LENGTH4 =>   ff_tx_data_o <=  x"00";	            
		         
		
		if (piggy_mounted ='1' )  then	s_state <= payload1 ;     s_allow_ack <= '0';       else	s_state <= payld1 ;     end if; 

      -------------------------------------------------------------------------------------------------------------------------------------------------------------
      -------------------------------------------------------------------------------------------------------------------------------------------------------------


		when payload1 => ff_tx_data_o <=  tr_fifo_payload_base(7 downto 0);     bytes <= bytes + 1;    s_state <= payload2; 
        when payload2 => ff_tx_data_o <=  tr_fifo_payload_base(15 downto 8);    bytes <= bytes + 1;    s_state <= payload3 ;      tr_fifo_readack_base <= '1';
        when payload3 => ff_tx_data_o <=  tr_fifo_payload_base(23 downto 16);   bytes <= bytes + 1;    s_state <= payload4 ;      tr_fifo_readack_base <= '0';
        when payload4 => ff_tx_data_o <=  tr_fifo_payload_base (31 downto 24);  bytes <= bytes + 1;
             if (bytes < (fr_length_i -1) )  then	
               if (empty_piggy = '1') then s_state <= payload1; else s_state <= payload5; end if;          
             else	            
               s_state <= gts1 ;     
             end if;        
            
                 
       when payload5 => ff_tx_data_o <=  tr_fifo_payload_piggy(7 downto 0);                                       bytes <= bytes + 1;    s_state <= payload6;                                  
       when payload6 => ff_tx_data_o <=  tr_fifo_payload_piggy(15 downto 8);                                      bytes <= bytes + 1;    s_state <= payload7;    tr_fifo_readack_piggy <= '1';
       when payload7 => ff_tx_data_o(7) <= '1';  ff_tx_data_o(6 downto 0) <= tr_fifo_payload_piggy(22 downto 16); bytes <= bytes + 1;    s_state <= payload8;    tr_fifo_readack_piggy <= '0';   -- Marker for Piggy data bit(23)=1          
       when payload8 =>   ff_tx_data_o <=  tr_fifo_payload_piggy(31 downto 24);     bytes <= bytes + 1;  
             if (bytes < (fr_length_i -1) )  then	
              if (empty_base = '1') then s_state <= payload5; else s_state <= payload1; end if;           
             else	            
               s_state <= gts1 ;           
             end if;
     
      ---------------------------------------------------------------------------------------------------------------------------------------------------
      -------------------------------------------------------------------------------------------------------------------------------------------------------------
     
      -------------------------------------------------------------------------------------------------------------------------------------------------------------

      when payld1 =>   	ff_tx_data_o <=  tr_fifo_payload_base(7 downto 0);     bytes <= bytes + 1;      s_state <= payld2;                       	 	                           
      when payld2 =>   	ff_tx_data_o <=  tr_fifo_payload_base(15 downto 8);    bytes <= bytes + 1;      s_state <= payld3;      tr_fifo_readack_base <= '1';       
      when payld3 =>   	ff_tx_data_o <=  tr_fifo_payload_base(23 downto 16);   bytes <= bytes + 1;      s_state <= payld4;      tr_fifo_readack_base <= '0';        
      when payld4 =>   	ff_tx_data_o <=  tr_fifo_payload_base(31 downto 24);   bytes <= bytes + 1;                                   
             if (bytes < (fr_length_i -1) )  then	s_state <= payld1 ;         else	            s_state <= gts1 ;     end if;        
                        
       -------------------------------------------------------------------------------------------------------------------------------------------------------------
       
      
      
      
      
        when gts1 =>  ff_tx_data_o <=  global_TS(7 downto 0);				                s_state <= gts2;                        
		when gts2 =>  ff_tx_data_o <=  global_TS(15 downto 8);  					        s_state <= gts3;                        
		when gts3 =>  ff_tx_data_o <=  global_TS(23 downto 16);  					        s_state <= gts4;                        
		when gts4 =>  ff_tx_data_o <=  global_TS(31 downto 24) ;                         	s_state <= gts5;
		
		when gts5 =>  ff_tx_data_o <=  global_TS(39 downto 32);				                s_state <= gts6;                        
		when gts6 =>  ff_tx_data_o <=  global_TS(47 downto 40);  					        s_state <= gts7;                        
		when gts7 =>  ff_tx_data_o <=  global_TS(55 downto 48);  					        s_state <= gts8;                        
		when gts8 =>  ff_tx_data_o <=  global_TS(63 downto 56);                         	s_state <= eop1;
      
      
        
      
     
		when eop1 =>  ff_tx_data_o <=  IP_src_addr_i(7 downto 0);				                s_state <= eop2;                       -- tr_fifo_readack_base <= '0';
		when eop2 =>  ff_tx_data_o <=  counter24bit_in(7 downto 0);  					        s_state <= eop3;                       -- tr_fifo_readack_piggy <= '1'; 
		when eop3 =>  ff_tx_data_o <=  counter24bit_in(15 downto 8);  					        s_state <= eop4;                       -- tr_fifo_readack_piggy <= '0'; 
		when eop4 =>  ff_tx_data_o <=  counter24bit_in(23 downto 16) ; ff_tx_last_o <= '1';		s_state <= terminate ;
		
		---------------------------------------------------------------------------------------------------------------------------------------------------
		when terminate =>	ff_tx_data_o <=  x"00";	 s_ff_tx_wren_o <= '0';	ff_tx_last_o <='0'; send_UDP_active<='0'; s_state <= waiting ;
      ---------------------------------------------------------------------------------------------------------------------------------------------------
      
      
      when others =>
        if start_i = '1' then
          -- START Condition detected
          s_state <= H_01;
          
        end if;
    end case;
  end if;
end process p_ctrl;


  ff_tx_valid_o <= s_ff_tx_wren_o;
end rtl;
