-- define these signals before beginning architecture
 signal s1
case ALU_Sel is
    when "00" =>
        
        u00: adsub3 port map(A, B, '0', result_3bit, result_carry);
        ALU_Out <= result_carry & result_3bit;
    when "01" =>
        u01: adsub3 port map(A, B, '1', result_3bit, result_carry);
        ALU_Out <= result_carry & result_3bit;
    when "10" =>
        ALU_Out <= '0' & (A AND B);
    when "11" =>
        ALU_Out <= '0' & (A XOR B);
end case;