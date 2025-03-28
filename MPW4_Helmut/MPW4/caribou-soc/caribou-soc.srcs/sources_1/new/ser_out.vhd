library ieee;
use ieee.std_logic_1164.all;

entity serout is
port (frame_40 : in std_logic;
       clk_320 : in std_logic;
            pin: in std_logic_vector(9 downto 0);
         sout_h: out std_logic;
         sout_l: out std_logic;
           tp  : out std_logic);
end serout;

architecture Behavioral of serout is


signal s_shift_h : std_logic_vector(4 downto 0);
signal s_shift_l : std_logic_vector(4 downto 0);

signal s_frame_40, s_frame_40_d, s_frame_40_pedge, s_frame_40_pedge_p, s_frame_40_pedge_pp: std_logic;
signal s_sout, s_sout_p: std_logic;
 
begin

process (clk_320) --pedge & delay frame_40
begin
   if ( rising_edge(clk_320) ) then 
     s_frame_40 <= frame_40; 
     s_frame_40_d <= s_frame_40;
     
     s_frame_40_pedge <= s_frame_40 and (not s_frame_40_d);
     s_frame_40_pedge_p <= s_frame_40_pedge; 

   end if;
end process;


 
process(clk_320,s_frame_40_pedge_p)
begin

if ( rising_edge(clk_320) ) then 
  if s_frame_40_pedge_p = '1' then
    s_shift_h(4) <= pin(9);
    s_shift_h(3) <= pin(7);
    s_shift_h(2) <= pin(5);
    s_shift_h(1) <= pin(3);
    s_shift_h(0) <= pin(1);
  else
    s_shift_h(4) <= s_shift_h(3);
    s_shift_h(3) <= s_shift_h(2);
    s_shift_h(2) <= s_shift_h(1);
    s_shift_h(1) <= s_shift_h(0);
    s_shift_h(0) <= '0';
  end if;
end if;
end process;

process(clk_320,s_frame_40_pedge_p)
begin

if ( rising_edge(clk_320) ) then 
  if s_frame_40_pedge_p = '1' then
    s_shift_l(4) <= pin(8);
    s_shift_l(3) <= pin(6);
    s_shift_l(2) <= pin(4);
    s_shift_l(1) <= pin(2);
    s_shift_l(0) <= pin(0);
  else
    s_shift_l(4) <= s_shift_l(3);
    s_shift_l(3) <= s_shift_l(2);
    s_shift_l(2) <= s_shift_l(1);
    s_shift_l(1) <= s_shift_l(0);
    s_shift_l(0) <= '0';
  end if;
end if;
end process;


sout_h <= s_shift_h(4); 
sout_l <= s_shift_l(4); 
tp <= s_frame_40_pedge_p;
end;





