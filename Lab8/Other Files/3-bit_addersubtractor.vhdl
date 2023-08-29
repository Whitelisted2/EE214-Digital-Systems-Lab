-----------------------------------------------
---------- CODE FOR 1-BIT FULL ADDER ----------
----------------- (DATAFLOW) ------------------
library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
port(
	i1, i2, i3: in std_logic;
	o1, o2: out std_logic);
end fulladder;

architecture fa_dat of fulladder is
begin
	o1 <= i1 xor i2 xor i3;
	o2 <= (i1 and i2) or ((i1 xor i2) and i3);
end fa_dat;

-----------------------------------------------
------- CODE FOR 3-BIT ADDER/SUBTRACTOR -------
---------------- (STRUCTURAL) -----------------
library ieee;
use ieee.std_logic_1164.all;

entity adsub3 is
port(
	a: in std_logic_vector (2 downto 0);
	b: in std_logic_vector (2 downto 0);
	m: in std_logic;
	sum: out std_logic_vector (2 downto 0);
	cout: out std_logic);
end adsub3;


architecture struct of adsub3 is
		
	------- COMPONENT DEFINITION -------
	component fulladder is
	port(
		i1, i2, i3: in std_logic;
		o1, o2: out std_logic);
	end component;

	------- INTERMEDIATE SIGNALS -------
	signal c1: std_logic;
	signal c2: std_logic;
	signal bb: std_logic_vector (2 downto 0);

------- STRUCTURAL MODELING CODE -------
begin
	bb(0) <= b(0) xor m;
	bb(1) <= b(1) xor m;
	bb(2) <= b(2) xor m;

	u1: fulladder port map ( a(0), bb(0), m, sum(0), c1 );
	u2: fulladder port map ( a(1), bb(1), c1, sum(1), c2 );
	u3: fulladder port map ( a(2), bb(2), c2, sum(2), cout );

end struct;