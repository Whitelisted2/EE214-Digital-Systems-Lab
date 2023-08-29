library ieee;
use ieee.std_logic_1164.all;

entity half_adder_dat is
port(
    A, B: in std_logic;
    S, C: out std_logic);
end half_adder_dat;

architecture dataflow of half_adder_dat is
begin
    S <= A xor B;
    C <= A and B;
end dataflow;