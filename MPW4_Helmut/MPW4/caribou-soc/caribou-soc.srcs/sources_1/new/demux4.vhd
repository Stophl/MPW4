library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity demux4 is
port(
  clk40  : in std_logic;
  a      : in  std_logic_vector(31 downto 0);
  b      : out std_logic_vector(7 downto 0));
end demux4;



architecture rtl of demux4 is

signal s_sel: std_logic_vector(1 downto 0):= (others => '0');


begin

process (clk40) --free running counter
begin
   if ( rising_edge(clk40) ) then s_sel <= s_sel + 1; end if;
end process;



p_demux : process(a,s_sel)
begin
  case s_sel is
    when "00" => b <= a(31 downto 24) ;
    when "01" => b <= a(23 downto 16) ;
    when "10" => b <= a(15 downto 8) ;
    when others => b <= a(7 downto 0) ;
  end case;
end process p_demux;
end;


