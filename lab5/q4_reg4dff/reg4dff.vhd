entity reg4dff is
	port(
		clk0, d3, d2, d1, d0 : in bit;
		q3, q2, q1, q0 : out bit
	);
end entity;

architecture main of reg4dff is
	component flipflopD is
		port(
			clk, D : in bit;
			Q : out bit
		);
	end component;
begin
	u0: flipflopD port map(
		D => d0,
		Q => q0,
		clk => clk0
	);
	
	u1: flipflopD port map(
		D => d1,
		Q => q1,
		clk => clk0
	);
	
	u2: flipflopD port map(
		D => d2,
		Q => q2,
		clk => clk0
	);

	u3: flipflopD port map(
		D => d3,
		Q => q3,
		clk => clk0
	);
end architecture;