library ieee;
use ieee.std_logic_1164.all;

entity full_adder_beh is
port(
    X, Y, Cin: in std_logic;
    Cout, S: out std_logic);
end full_adder_beh;

architecture behaviour of full_adder_beh is
begin
    c1: process (x, Y, Cin)
    begin
        if X = '0' then
            if Y = '0' then
                Cout <= '0';
                S <= Cin;
            else
                Cout <= Cin;
                S <= not Cin;
            end if;
        else
            if Y = '0' then
                Cout <= Cin;
                S <= not Cin;
            else
                Cout <= 1;
                S <= not Cin;
            end if;
        end if;
    end process c1;
end behaviour;
