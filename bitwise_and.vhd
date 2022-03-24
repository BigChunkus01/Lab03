LIBRARY ieee;
use ieee.std_logic_1164.all;
use work.components.all;  

entity bitwise_and is
generic (N : INTEGER := 4);
port (x,y : in std_logic_vector((n-1) downto 0);
		z: out std_logic_vector((n-1) downto 0));
end bitwise_and;

architecture struc_behavior of bitwise_and is
begin
	z <= x and y;
end struc_behavior;