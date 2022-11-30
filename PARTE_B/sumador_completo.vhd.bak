library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo is 
	port (  a: in  std_logic;
			  b: in  std_logic;
			Cin: in  std_logic;
			  f: out std_logic;
		  Cout: out std_logic
		  );
end sumador_completo;

architecture sumador of sumador_completo is
 begin
		f <= a xor b xor Cin;
		Cout <= (a and b) or ((a xor b) and Cin);
 end sumador;