library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ej_combinacional_testbench is 
end ej_combinacional_testbench;

ARCHITECTURE behavior OF ej_combinacional_testbench IS

	COMPONENT ej_combinacional
	PORT(
		SW1 : in STD_LOGIC;
		SW2 : in STD_LOGIC;
		LED : out STD_LOGIC
		);
	END COMPONENT;
	
	signal SW1 : std_logic := '0';
	signal SW2 : std_logic := '0';
	signal LED : std_logic;
	
BEGIN

	uut:ej_combinacional PORT MAP (
		SW1	=> SW1,
		SW2	=> SW2,
		LED => LED
	);
	
	stim_proc: process
	begin
		SW1 <= '0'; SW2 <= '0'; wait for 10ns;
		SW1 <= '0'; SW2 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; wait for 10ns;
		SW1 <= '1'; SW2 <= '1'; wait for 10ns;
		wait;
	end process;
END;