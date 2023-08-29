
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
