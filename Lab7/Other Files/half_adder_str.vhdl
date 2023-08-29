-----------------------------------------------
-------------- CODE FOR XOR GATE --------------
library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
port(
    i1, i2: in std_logic;
    o1: out std_logic);
end circuit_1;

architecture dataflow of xor_gate is
begin
    o1 <= i1 xor i2;
end dataflow;

-----------------------------------------------
-------------- CODE FOR AND GATE --------------
library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
port(
    i3, i4: in std_logic;
    o2: out std_logic);
end circuit_1;

architecture dataflow of and_gate is
begin
    o2 <= i3 and i4;
end dataflow;

-----------------------------------------------
------------- CODE FOR HALF ADDER -------------
library ieee;
use ieee.std_logic_1164.all;

entity half_adder_str is
port(
    A, B: in std_logic;
    S, C: out std_logic);
end half_adder_str;

architecture structure of half_adder_str is
    component xor_gate is
    port(
        i1, i2: in std_logic;
        o1: out std_logic
    );
    end component;
    component and_gate is
    port(
        i3, i4: in std_logic;
        o2: out std_logic
    );
    end component;
begin
    u1: xor_gate port map (i1 => A, i2 => B, o1 => S);
    u2: and_gate port map (i3 => a, i4 => b, o2 => C);
    -- map the ports of the components to the ports of the overall half adder
end structure;
