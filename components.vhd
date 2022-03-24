library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

package components is
------------ full adder ---------------
component fulladd IS
	PORT ( Cin, x, y : IN STD_LOGIC;
		s, Cout : OUT STD_LOGIC );
END component;

--------- multiplexer -----------------------
component mux2to1 IS
	generic(n : integer := 4);
	PORT ( s : IN std_logic;
			a, b : in std_logic_vector((n-1) downto 0);
			f : OUT std_logic_vector((n-1) downto 0));
END component;

------------ n bit register -----------------------
component regN is
	generic(N: integer:= 32);
	port (clock : in std_logic;
	  D : in std_logic_vector(N-1 downto 0);
	  Q : out std_logic_vector(N-1 downto 0));
end component;

-------------- instruction memory --------------------------
component instruction_memory is
	port(clock, reset : in std_logic;
			input : in std_logic_vector(3 downto 0);
			output : out std_logic_vector(31 downto 0));
end component;

--------------- register file -------------------------------
component register_file is
	port(clock, reset, RegWrite : in std_logic;
			read_port1, read_port2, write_port, write_value : in std_logic_vector(3 downto 0);
			value1, value2 : out std_logic_vector(3 downto 0));
end component;

------------- instruction decode ----------------------------
component instruction_decode is
	port(instr : in std_logic_vector(31 downto 0);
			MemRead, MemWrite, RegWrite, add_sub : out std_logic;
			read_p1, read_p2, write_p, offset : out std_logic_vector(3 downto 0);
			ALUOP : out std_logic_vector(1 downto 0));
end component;

-------------bitwise_operators ----------------------------------
component bitwise_or is
GENERIC (N : INTEGER := 4);
PORT (x, y : IN STD_LOGIC_VECTOR((n-1) downto 0);
z : OUT STD_LOGIC_VECTOR((n-1) downto 0));
END component;

component bitwise_and is
GENERIC (N : INTEGER := 4);
PORT (x, y : IN STD_LOGIC_VECTOR((n-1) downto 0);
z : OUT STD_LOGIC_VECTOR((n-1) downto 0));
END component;

-----------data_memory----------------------------------------
component data_memory is
port(clock, reset, MemWrite : in std_logic;
			read_port1, write_value : in std_logic_vector(3 downto 0);
			value1 : out std_logic_vector(3 downto 0));
end component;

end components;