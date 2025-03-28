library ieee;
use ieee.std_logic_1164.all;

entity deser_reg_14bit is


	port 
	(
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
		enable	: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (13 DOWNTO 0)
	);

end entity;

architecture rtl of deser_reg_14bit is

	
begin

	process (clock)
	begin
		if (rising_edge(clock)) then

			if (enable = '1') then
             
				 q <= data;

			end if;
		end if;
	end process;

	

end rtl;