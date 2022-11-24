-- is a reg4dffclr
entity contador is
	port(
		clk0_c, d3_c, d2_c, d1_c, d0_c, clr : in bit;
		q3_c, q2_c, q1_c, q0_c : out bit
	);
end entity;

architecture main of contador is
	component reg4dff is
		port(
			clk0, d3, d2, d1, d0 : in bit;
			q3, q2, q1, q0 : out bit
		);
	end component;
	component mux2x1 is
		port(
			  s, I0, I1 : in bit;
			  d : out bit
		 );
	end component;
	
	signal m0 : bit;
	signal m1 : bit; 
	signal m2 : bit; 
	signal m3 : bit;
	
	signal z : bit := '0';
begin
	r: reg4dff port map(
		clk0 => clk0_c,
		d3 => m3,
		d2 => m2,
		d1 => m1,
		d0 => m0,
		q3 => q3_c,
		q2 => q2_c,
		q1 => q1_c,
		q0 => q0_c
	);
	
	mux0: mux2x1 port map(
		s => clr,
		I0 => d0_c,
		I1 => z,
		d => m0
	);
	
	mux1: mux2x1 port map(
		s => clr,
		I0 => d1_c,
		I1 => z,
		d => m1
	);
	
	mux2: mux2x1 port map(
		s => clr,
		I0 => d2_c,
		I1 => z,
		d => m2
	);
	
	mux3: mux2x1 port map(
		s => clr,
		I0 => d3_c,
		I1 => z,
		d => m3
	);
end architecture;