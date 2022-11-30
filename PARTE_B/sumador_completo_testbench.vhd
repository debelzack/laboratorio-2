LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sumador_completo_testbench IS
END sumador_completo_testbench;

ARCHITECTURE behavior OF sumador_completo_testbench IS

		COMPONENT sumador_completo
		PORT(
				in_a	: in  STD_LOGIC;
				in_b	: in  STD_LOGIC;
			 in_cin	: in  STD_LOGIC;
				 clk	: in  STD_LOGIC;
				 o_f	: out STD_LOGIC;
			  o_cout : out STD_LOGIC
			  );
		END COMPONENT;
		
	signal in_a   : std_logic := '0';
	signal in_b   : std_logic := '1';
	signal in_cin : std_logic := '0';
	signal clk    : std_logic := '0';
	signal o_f 	  : std_logic;
	signal o_cout : std_logic; 
	
	constant clock_period : time := 20ns;
	
BEGIN
	
	utt: sumador_completo PORT MAP (
			in_a		=> in_a,
			in_b		=> in_b,
			in_cin	=> in_cin,
				clk	=> clk,
				o_f	=> o_f,
			o_cout	=> o_cout
	);
	
clock_process:process
		begin
				clk <= '0';
				wait for clock_period/2;
				clk <= '1';
				wait for clock_period/2;
end process;

	stim_proc: process
	begin
	
		in_a <= '0'; in_b <= '0'; in_cin <= '0'; wait for 30ns;
		in_a <= '0'; in_b <= '0'; in_cin <= '1'; wait for 30ns;
		in_a <= '0'; in_b <= '1'; in_cin <= '0'; wait for 30ns;
		in_a <= '0'; in_b <= '1'; in_cin <= '1'; wait for 30ns;
		in_a <= '1'; in_b <= '0'; in_cin <= '0'; wait for 30ns;
		in_a <= '1'; in_b <= '0'; in_cin <= '1'; wait for 30ns;
		in_a <= '1'; in_b <= '1'; in_cin <= '0'; wait for 30ns;
		in_a <= '1'; in_b <= '1'; in_cin <= '1'; wait for 30ns;
		wait;
	end process;
END;
	