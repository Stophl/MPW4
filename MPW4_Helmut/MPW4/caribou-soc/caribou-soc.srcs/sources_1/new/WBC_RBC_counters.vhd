
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_misc.OR_REDUCE; 
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


entity WBC_RBC_counters is
    Port ( TLU_clk : in STD_LOGIC;
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
end WBC_RBC_counters;

architecture Behavioral of WBC_RBC_counters is

 component WBC_RBC_FIFO
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
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
  
  

 signal s_wbc_rbc_clear, s_wbc_rbc_set, s_wbc_rbc_comp, s_wbc_rbc_comp_axi: std_logic := '0'; 
 signal s_wbc_val,s_wbc,s_rbc : std_logic_vector(7 downto 0);
 signal s_SFOUTBUFF_COMP_filtered_pedge, s_SFOUTBUFF_COMP_filtered_delayed: std_logic := '0'; 
 signal cmpf_tmp: std_logic_vector(47 downto 0);
 signal s_WBC_RBC_FIFO_out, s_WBC_RBC_FIFO_out_p, s_WBC_RBC_FIFO_out_axi, s_WBC_RBC_FIFO_in: std_logic_vector(31 downto 0);
 signal s_WBC_RBC_usedw: std_logic_vector(8 downto 0);
 signal s_wbc_rbc_FIFO_read,s_wbc_rbc_not_empty: std_logic := '0'; 
 signal s_fifo1_tval, s_fifo1_tvalid, s_fifo1_tlast: std_logic := '0';
 signal s_fifo1_tdata: std_logic_vector(31 downto 0);
 signal s_DataFifo2_usedw: std_logic_vector(15 downto 0);
 

begin

-------------------------------------------
--           WBC RBC counters:           -
-------------------------------------------

process (TLU_clk) --wbc counter
begin
   if ( rising_edge(TLU_clk) ) then  
      if wbc_rbc_set ='1' then   --load
            s_wbc <= wbc_load_val;
      else
            s_wbc <= s_wbc + 1;
      end if;
   end if;
end process;


process (TLU_clk) --rbc counter
begin
   if ( rising_edge(TLU_clk) ) then  
      if s_wbc_rbc_set ='1' then   --load
            s_rbc <= "00000000";
      else
            s_rbc <= s_rbc + 1;
      end if;
   end if;
end process;

process(TLU_clk) -------- pedge s_SFOUTBUFF_COMP_filtered --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(TLU_clk) ) then  s_SFOUTBUFF_COMP_filtered_pedge <= (pipe(1) xor pipe(2))  and  ( not pipe(2));  pipe:=  SFOUTBUFF_COMP_filtered & pipe(1);  end if;       
  end process;

------delay s_SFOUTBUFF_COMP_filtered_pedge to wait for TOT counter finished -----------------------------------------------------------------------
  process(TLU_clk)   
  begin
    if (rising_edge (TLU_clk)) then 
       for i in 0 to 31 loop cmpf_tmp(i+1) <= cmpf_tmp(i); end loop;
       cmpf_tmp(0) <= s_SFOUTBUFF_COMP_filtered_pedge;
    end if; 
  end process;  
 
  s_SFOUTBUFF_COMP_filtered_delayed <= cmpf_tmp(20); 


s_WBC_RBC_FIFO_in <= (s_rbc(7 downto 0) & s_wbc (7 downto 0) & TOT_cnt_in(15 DOWNTO 0));
WBC_RBC_FIFO_inst: WBC_RBC_FIFO
  port map (
	 clk   => TLU_clk,
     srst  => s_wbc_rbc_set,
     din   => s_WBC_RBC_FIFO_in,
     wr_en => s_SFOUTBUFF_COMP_filtered_delayed,
     rd_en => s_wbc_rbc_FIFO_read,
     dout  => s_WBC_RBC_FIFO_out,
     full  => open,
     empty => open,
     data_count => s_WBC_RBC_usedw );
s_wbc_rbc_not_empty <= or_reduce(s_WBC_RBC_usedw);

---------------------------------------------------------------------------------
process(TLU_clk)
begin
   if (rising_edge (TLU_clk)) then  s_WBC_RBC_FIFO_out_p <= s_WBC_RBC_FIFO_out;   end if;
end process;

---------------------------------------------------------------------------------

process(TLU_clk) -- WBC / RBC compare
begin
   if (rising_edge (TLU_clk)) then 
      if ( s_rbc(7 downto 0) = s_WBC_RBC_FIFO_out_p(23 downto 16) ) then
         s_wbc_rbc_comp <= '1';
      else
         s_wbc_rbc_comp <= '0';
      end if;
   end if;
end process;


s_wbc_rbc_FIFO_read <= s_wbc_rbc_comp and s_wbc_rbc_not_empty;



 process(axi_clk) -- sync s_WBC_RBC_FIFO_out to axi_clk
  begin
    if ( rising_edge(axi_clk) ) then  s_WBC_RBC_FIFO_out_axi <= s_WBC_RBC_FIFO_out_p;   end if;    
  end process;
  
  process(axi_clk) -------- pedge (s_wbc_rbc_FIFO_read and s_TLU_trg_sim) --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(axi_clk) ) then  s_wbc_rbc_comp_axi <= (pipe(1) xor pipe(2))  and  ( not pipe(2));  pipe:=  (s_wbc_rbc_FIFO_read and TLU_trg_tag_we) & pipe(1);  end if;        
  end process;                                                                                                                      --  and s_TLU_trg_sim) & pipe(1);  end if;  
 
  -- s_TLU_trg_tag_axi_we_pedge ---------------------------------------------------------------------------------------------------------------|
  
  
  
  s_fifo1_tval <= (s_wbc_rbc_comp_axi  or  fifo1_stop);
  FDCE_inst : FDCE
   generic map (
 INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      C =>  axi_clk,      -- Clock input
      D =>  s_fifo1_tval,      -- Data input
      Q =>  s_fifo1_tvalid,      -- Data output
      CE =>  '1',    -- Clock enable input
      CLR => '0' ); -- Asynchronous clear input
     
   
 process(axi_clk) -- area constraints
  begin
    if ( rising_edge(axi_clk) ) then  
      s_fifo1_tdata <= s_WBC_RBC_FIFO_out_axi(15 downto 0) & TLU_trg_tag(15 downto 0);
      s_fifo1_tlast <= fifo1_stop;
    end if;    
  end process;
 

 --- axi streaming fifo1 mapping:

  fifo1_tdata(31 downto 0) <= s_fifo1_tdata;
  fifo1_tlast <= s_fifo1_tlast;
  fifo1_tvalid <= s_fifo1_tvalid;
  
  DATA_FIFO_inst2: data_fifo
 port map (
     clk   => axi_clk,
     srst  => s_wbc_rbc_set,
     din => s_fifo1_tdata,
     wr_en => s_wbc_rbc_comp_axi,
     rd_en  => data_fifo_rd,
     dout => data_fifo_out,
     full => open,
     empty => open,
     data_count => data_fifo_usedw  );


end Behavioral;
