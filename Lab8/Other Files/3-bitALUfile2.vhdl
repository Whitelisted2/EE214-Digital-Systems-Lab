            when "01" =>
                ALU_Out(0) <= (A(0) XOR (NOT B(0))) XOR '1';
                temp1 <= ((A(1) AND (NOT B(1))) OR ((A(1) AND '1') OR ((NOT B(1)) AND '1'));
                ALU_Out(1) <= (A(1) XOR (NOT B(1))) XOR temp1;
                temp2 <= ((A(1) AND (NOT B(1))) OR ((A(1) AND temp1) OR ((NOT B(1)) AND temp1));
                ALU_Out(2) <= (A(2) XOR (NOT B(2))) XOR temp2;
                ALU_Out(3) <= ((A(2) AND (NOT B(2))) OR ((A(2) AND temp2) OR ((NOT B(2)) AND temp2));
            when "10" =>
                ALU_Out <= '0' & (A AND B);
            when "11" =>
                ALU_Out <= '0' & (A XOR B);
        end case;
    end process c1;
end alu_beh;
