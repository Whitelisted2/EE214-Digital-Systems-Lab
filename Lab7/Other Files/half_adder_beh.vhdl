library ieee;
use ieee.std_logic_1164.all;

entity half_adder_beh is
port(
    A, B: in std_logic;
    S, C: out std_logic);
end half_adder_beh;

architecture behaviour of half_adder_beh is
begin
    c1: process (A,B)
    begin
        if A = '1' then
            S <= not B;
            C <= B;
        else
            S <= B;
            C <= '0';
        end if;
    end process c1;
end behaviour;
