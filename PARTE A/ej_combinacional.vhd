library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ej_combinacional is
	port (SW1 : in STD_LOGIC;
			SW2 : in STD_LOGIC;
			LED : out STD_LOGIC);
end ej_combinacional;

architecture Behavioral of ej_combinacional is 
begin
	LED <= not (SW1 or SW2);
end Behavioral; 