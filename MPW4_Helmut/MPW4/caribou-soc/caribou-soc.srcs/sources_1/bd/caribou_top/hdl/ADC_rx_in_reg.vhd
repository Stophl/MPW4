library ieee;
use ieee.std_logic_1164.all;

entity ADC_rx_in_reg is
 
	port 
	(
		clk		: in std_logic;
		
		ser_in_hl	: in std_logic_vector ( 1 downto 0);
		enable	: IN STD_LOGIC ;
		fifo_we_en: out STD_LOGIC ;
		q	: out std_logic_vector ( 13 downto 0) := "00000000000000"
	);

end entity;

architecture rtl of ADC_rx_in_reg is

	signal s_reg_stage0: std_logic_vector ( 1 downto 0) := "00";
	signal s_reg_stage1: std_logic_vector ( 1 downto 0) := "00";
	signal s_reg_stage2: std_logic_vector ( 1 downto 0) := "00";
	signal s_reg_stage3: std_logic_vector ( 1 downto 0) := "00";
	signal s_reg_stage4: std_logic_vector ( 1 downto 0) := "00";
	signal s_reg_stage5: std_logic_vector ( 1 downto 0) := "00";
	signal s_reg_stage6: std_logic_vector ( 1 downto 0) := "00";
	signal s_reg_stage7: std_logic_vector ( 1 downto 0) := "00";
	
	signal s_p_out, s_p_out_p: std_logic_vector ( 13 downto 0);
	signal s_enable, s_enable_p: std_logic;

begin

	process (clk) begin
		if (rising_edge(clk)) then 
		  s_reg_stage0 <= ser_in_hl;
		  s_reg_stage1 <= s_reg_stage0;
		  s_reg_stage2 <= s_reg_stage1;
		  s_reg_stage3 <= s_reg_stage2;
		  s_reg_stage4 <= s_reg_stage3;
		  s_reg_stage5 <= s_reg_stage4;
		  s_reg_stage6 <= s_reg_stage5;
		  s_reg_stage7 <= s_reg_stage6;
		end if;
    end process;

	
	--p_out <= (  s_reg_stage7(1) & s_reg_stage6(0) & s_reg_stage6(1) & s_reg_stage5(0) & s_reg_stage5(1) & s_reg_stage4(0) & s_reg_stage4(1) & s_reg_stage3(0) & s_reg_stage3(1) & s_reg_stage2(0) & s_reg_stage2(1) & s_reg_stage1(0) & s_reg_stage1(1) & s_reg_stage0(0));
    --p_out <= (  s_reg_stage6(1) & s_reg_stage6(0) & s_reg_stage5(1) & s_reg_stage5(0) & s_reg_stage4(1) & s_reg_stage4(0) & s_reg_stage3(1) & s_reg_stage3(0) & s_reg_stage2(1) & s_reg_stage2(0) & s_reg_stage1(1) & s_reg_stage1(0) & s_reg_stage0(1) & s_reg_stage0(0));
    s_p_out <= (  s_reg_stage7(1) & s_reg_stage7(0) & s_reg_stage6(1) & s_reg_stage6(0) & s_reg_stage5(1) & s_reg_stage5(0) & s_reg_stage4(1) & s_reg_stage4(0) & s_reg_stage3(1) & s_reg_stage3(0) & s_reg_stage2(1) & s_reg_stage2(0) & s_reg_stage1(1) & s_reg_stage1(0));
    --p_out <= (  s_reg_stage0(0) & s_reg_stage0(1) & s_reg_stage5(0) & s_reg_stage5(1) & s_reg_stage4(0) & s_reg_stage4(1) & s_reg_stage3(0) & s_reg_stage3(1) & s_reg_stage2(0) & s_reg_stage2(1) & s_reg_stage1(0) & s_reg_stage1(1) & s_reg_stage0(0) & s_reg_stage0(1));
    
    process (clk)
	begin
		if (rising_edge(clk)) then 
		    s_p_out_p <= s_p_out;
		    s_enable <= enable; 
		    s_enable_p  <= s_enable;
		    fifo_we_en <= s_enable_p;
		end if;
	end process;
    
    process (clk)
	begin
		if (rising_edge(clk)) then

			if (s_enable_p = '1') then
             
				 q <= s_p_out_p;

			end if;
		end if;
	end process;
	
end rtl;
