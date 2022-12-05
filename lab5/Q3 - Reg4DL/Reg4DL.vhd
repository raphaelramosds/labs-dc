entity Reg4DL is
	port(
		clk0, d3, d2, d1, d0 : in bit;
		q3, q2, q1, q0 : out bit
	);
end entity;

architecture main of Reg4DL is
	component LatchD is
		port(
			c, D : in bit;
			Q : out bit
		);
	end component;
begin
	u0: LatchD port map(
		D => d0,
		Q => q0,
		c => clk0
	);
	
	u1: LatchD port map(
		D => d1,
		Q => q1,
		c => clk0
	);
	
	u2: LatchD port map(
		D => d2,
		Q => q2,
		c => clk0
	);

	u3: LatchD port map(
		D => d3,
		Q => q3,
		c => clk0
	);
end architecture;