entity inc4bit is
	port(
		a0, a1, a2, a3 : in bit;
		o0, o1, o2, o3 : out bit
	);
end entity;

architecture main of inc4bit is
	component half_adder is
		port(
			a, b   : in bit;
			s, c : out bit
		);
	end component;
	
	signal has0 : bit;
	signal has1 : bit;
	signal has2 : bit;
	
	signal one : bit := '1';
begin
	ha0: half_adder port map(
		a => one,
		b => a0,
		s => o0,
		c => has0
	);
	
	ha1: half_adder port map(
		a => has0,
		b => a1,
		s => o1,
		c => has1
	);
	
	ha2: half_adder port map(
		a => has1,
		b => a2,
		s => o2,
		c => has2
	);

	ha3: half_adder port map(
		a => has2,
		b => a3,
		s => o3
	);
end architecture;