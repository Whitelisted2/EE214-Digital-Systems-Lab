-----------------------------------------------------
------- 3-bit ALU using behavioral modelling --------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU is
port(
    A, B: in STD_LOGIC_VECTOR(2 downto 0);      -- 2 inputs of 3 bits each
    ALU_Sel: in STD_LOGIC_VECTOR(1 downto 0);
    ALU_Out: out STD_LOGIC_VECTOR(3 downto 0) );
end ALU;

architecture alu_beh of ALU is

    ------- INTERMEDIATE SIGNALS -------
    signal temp1: std_logic;
    signal temp2: std_logic;

begin
    c1: process(A, B, ALU_Sel)
    begin
        case ALU_Sel is
            when "00" =>
                ALU_Out(0) <= A(0) XOR B(0);
                temp1 <= A(0) AND B(0);
                ALU_Out(1) <= (A(1) XOR B(1)) XOR temp1;
                temp2 <= ((A(1) AND B(1)) OR ((A(1) AND temp1) OR (B(1) AND temp1));
                ALU_Out(2) <= (A(2) XOR B(2)) XOR temp2;
                ALU_Out(3) <= ((A(2) AND B(2)) OR ((A(2) AND temp2) OR (B(2) AND temp2));