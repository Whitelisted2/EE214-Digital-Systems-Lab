
------- STRUCTURAL MODELING CODE -------
begin
	bb(0) <= b(0) xor m;
	bb(1) <= b(1) xor m;
	bb(2) <= b(2) xor m;

	u1: fulladder port map ( a(0), bb(0), m, sum(0), c1 );
	u2: fulladder port map ( a(1), bb(1), c1, sum(1), c2 );
	u3: fulladder port map ( a(2), bb(2), c2, sum(2), cout );

end struct;