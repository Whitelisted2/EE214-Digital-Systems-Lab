-----------------------------------------------
-------------- CODE FOR XOR GATE --------------
library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
port(
    i1, i2: in std_logic;
    o1: out std_logic);
end xor_gate;

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
end and_gate;

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
