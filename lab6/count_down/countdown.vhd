entity countdown is
	port(
		clk, clr_cnt : in bit;
		t3, t2, t1, t0, tc : out bit
	);
end entity;

architecture main of countdown is
	component reg4dffclr is
		port(
			clk0_c, d3_c, d2_c, d1_c, d0_c, clr : in bit;
			q3_c, q2_c, q1_c, q0_c : out bit
		);
	end component;
	
	component inc4bit is
		port(
			a0, a1, a2, a3 : in bit;
			o0, o1, o2, o3 : out bit
		);
	end component;
	
	signal cs0 : bit := '0';
	signal cs1 : bit := '0';
	signal cs2 : bit := '0';
	signal cs3 : bit := '1';
	
	signal rs0 : bit := '0';
	signal rs1 : bit := '0';
	signal rs2 : bit := '0';
	signal rs3 : bit := '0';
	
begin
	reg: reg4dffclr port map(
		clk0_c => clk,
		d3_c => cs3,
		d2_c => cs2,
		d1_c => cs1,
		d0_c => cs0,
		clr => clr_cnt,
		
		q0_c => rs0,
		q1_c => rs1,
		q2_c => rs2,
		q3_c => rs3
	);
	
	inc: inc4bit port map(
		a0 => rs0,
		a1 => rs1,
		a2 => rs2,
		a3 => rs3,
		
		o0 => cs0,
		o1 => cs1,
		o2 => cs2,
		o3 => cs3
	);
	
	tc <= rs0 and rs1 and rs2 and rs3;
	t0 <= not rs0; 
	t1 <= not rs1; 
	t2 <= not rs2;
	t3 <= not rs3;
end architecture;