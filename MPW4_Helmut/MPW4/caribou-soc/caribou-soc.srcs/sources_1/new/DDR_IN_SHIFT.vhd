

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


entity DDR_IN_SHIFT is
    Port ( clk_320 : in STD_LOGIC;
           frame_40: in STD_LOGIC;
           sin_l : in STD_LOGIC;
           sin_h : in STD_LOGIC;
           
           bitslip_in : in STD_LOGIC_VECTOR (2 downto 0);
           
           Qh : out STD_LOGIC_VECTOR (4 downto 0);
           Ql : out STD_LOGIC_VECTOR (4 downto 0);
           Q : out STD_LOGIC_VECTOR (9 downto 0));
end DDR_IN_SHIFT;

architecture Behavioral of DDR_IN_SHIFT is

signal s_frame_40, s_frame_40_d, s_frame_40_pedge  : STD_LOGIC; 
signal s_frame_40_pedge_p, s_frame_40_pedge_pp, s_frame_40_pedge_ppp, s_frame_40_pedge_pppp: STD_LOGIC; 
signal s_dff_enable: STD_LOGIC; 
signal s_shift_h : std_logic_vector(4 downto 0);
signal s_shift_l : std_logic_vector(4 downto 0);
signal s_Q: std_logic_vector(9 downto 0);
signal s_CO : std_logic_vector(3 downto 0);
signal s_frame40_co: STD_LOGIC; 

begin



  
process (clk_320) --pedge & delay frame_40
begin
   if ( rising_edge(clk_320) ) then 
     s_frame_40 <= frame_40; 
     s_frame_40_d <= s_frame_40;
     s_frame_40_pedge <= s_frame_40 and (not s_frame_40_d);
     
     s_frame_40_pedge_p <= s_frame_40_pedge; 
     s_frame_40_pedge_pp <= s_frame_40_pedge_p; 
     s_frame_40_pedge_ppp <= s_frame_40_pedge_pp; 
     s_frame_40_pedge_pppp <= s_frame_40_pedge_ppp; 

   end if;
end process;


process (bitslip_in,s_frame_40_pedge,s_frame_40_pedge_p,s_frame_40_pedge_pp,s_frame_40_pedge_ppp)
begin
   case bitslip_in is
        when "000" => s_dff_enable <= s_frame_40_pedge;
        when "001" => s_dff_enable <= s_frame_40_pedge_p;
        when "010" => s_dff_enable <= s_frame_40_pedge_pp;
        when "011" => s_dff_enable <= s_frame_40_pedge_ppp;
        when "100" => s_dff_enable <= s_frame_40_pedge_pppp;
       
      when others => s_dff_enable <= s_frame_40_pedge;
   end case;
end process;




process (clk_320) 
begin
   if ( rising_edge(clk_320) ) then 
     s_shift_h(4) <= s_shift_h(3);
     s_shift_h(3) <= s_shift_h(2);
     s_shift_h(2) <= s_shift_h(1);
     s_shift_h(1) <= s_shift_h(0);
     s_shift_h(0) <= sin_h;
   end if;
end process;

process (clk_320) 
begin
   if ( rising_edge(clk_320) ) then 
     s_shift_l(4) <= s_shift_l(3);
     s_shift_l(3) <= s_shift_l(2);
     s_shift_l(2) <= s_shift_l(1);
     s_shift_l(1) <= s_shift_l(0);
     s_shift_l(0) <= sin_l;
   end if;
end process;


process (clk_320) 
begin
   if ( rising_edge(clk_320) ) then 
     if (s_dff_enable = '1') then
     
--        s_Q(9) <= s_shift_l(4);
--        s_Q(8) <= s_shift_h(4);
--        s_Q(7) <= s_shift_l(3);
--        s_Q(6) <= s_shift_h(3);
--        s_Q(5) <= s_shift_l(2);
--        s_Q(4) <= s_shift_h(2);
--        s_Q(3) <= s_shift_l(1);
--        s_Q(2) <= s_shift_h(1);
--        s_Q(1) <= s_shift_l(0);
--        s_Q(0) <= s_shift_h(0);
        
        s_Q(9) <= s_shift_h(0);
        s_Q(8) <= s_shift_l(0);
        s_Q(7) <= s_shift_h(1);
        s_Q(6) <= s_shift_l(1);
        s_Q(5) <= s_shift_h(2);
        s_Q(4) <= s_shift_l(2);
        s_Q(3) <= s_shift_h(3);
        s_Q(2) <= s_shift_l(3);
        s_Q(1) <= s_shift_h(4);
        s_Q(0) <= s_shift_l(4);

        Qh <= s_shift_h;
        Ql <= s_shift_l;
        
     end if;
   end if; 
end process;

process (clk_320) 
begin
   if ( rising_edge(clk_320) ) then Q(9 downto 0) <= s_Q(9 downto 0); end if;
end process;


end Behavioral;

