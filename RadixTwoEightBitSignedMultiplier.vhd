library ieee; 
use ieee.std_logic_1164.all; 
use work.components.all;  


entity RadixTwoEightBitSignedMultiplier is 
	port(		: in std_logic;
				: out std_logic);
end RadixTwoEightBitSignedMultiplier;


architecture behavior of RadixTwoEightBitSignedMultiplier is
	constant		std_logic;
	signal mux1out : std_logic_vector(3 downto 1);
	signal fulladdOut : std_logic;
	
begin

--- Multiplier (X: k bits) ---


--- Partial Product (P: 2k+2 bits) ---


--- Multiplicand (A) ---


--- 2to1 Mux ---
Mux0: mux2to1 port map ((INPUT), (SELECT), (ENABLE), mux1out);

--- FSM Controller ---


--- bitwise_and ---
And0: bitwise_and port map ((X), (Y), and1out);

--- Fulladder (k +2 bits) ---
Fulladder1: fulladd port map ((CIN), (INPUT1), (INPUT2), s, fulladdOut);


end behavior;