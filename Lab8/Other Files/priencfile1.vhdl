
-----------------------------------------------------
--------------- 4:2 PRIORITY ENCODER ----------------
library ieee;
use ieee.std_logic_1164.all;

entity encoder is
port(
    encoder_in : in std_logic_vector(3 downto 0);
    bin_out : out std_logic_vector(1 downto 0);
    enable : in std_logic);
end encoder;

architecture behavioral of encoder is
begin
    c1 : process(enable, encoder_in)
	begin
	if enable = '1' then
		if encoder_in(0) = '1' then
			bin_out(0) <= '0';
			bin_out(1) <= '0';
		elsif encoder_in(1) = '1' then
			bin_out(0) <= '0';
			bin_out(1) <= '1';
		elsif encoder_in(2) = '1' then
			bin_out(0) <= '1';
			bin_out(1) <= '0';
		elsif encoder_in(3) = '1' then
			bin_out(0) <= '1';
			bin_out(1) <= '1';
		end if;