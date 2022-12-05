entity hlsm1 is
	port(
		bin1, clk2 : in bit;
		bout1 : out bit
	);
end entity;

architecture main of hlsm1 is
	component LimitedUpCounter is
		PORT (
			pin0, pin1, pin2, pin3, -- entradas do contador
			load, clr, count, clk1 : IN BIT;
			t3, t2, t1, t0, tc : OUT BIT -- saídas do contador
		);
	end component;
	
	component fsm1 is
		PORT (
        bin, tc, c2, c1, c0 : IN BIT;
        clr, bout, cnt, o2, o1, o0 : OUT BIT
    );
	end component;
	
	component Reg4 is
	PORT (
        clk0, d3, d2, d1, d0 : IN BIT;
        q3, q2, q1, q0 : OUT BIT
    );
	end component;
	
signal tcCounter : bit;	
signal clrFsm1 : bit;
signal cntFsm1 : bit;
signal i2Reg4 : bit;
signal i1Reg4 : bit;
signal i0Reg4 : bit;
signal o2Fsm1 : bit;
signal o1Fsm1 : bit;
signal o0Fsm1 : bit;
	
begin
	counter : LimitedUpCounter port map(
		clr => clrFsm1,
		count => cntFsm1,
		clk1 => clk2,
		tc => tcCounter,
		load => '0',
		pin0 => '0', 
		pin1 => '0',
		pin2 => '0',
		pin3 => '0'
	);
	
	reg : Reg4 port map(
		clk0 => clk2,
		d2 => o2Fsm1,
		d3 => '0',
		d1 => o1Fsm1,
		d0 => o0Fsm1,
		q2 => i2Reg4,
		q1 => i1Reg4,
		q0 => i0Reg4
	);
	
	fsm : fsm1 port map(
		bin => bin1,
		tc => tcCounter,
		c2 => i2Reg4,
		c1 => i1Reg4,
		c0 => i0Reg4,
		clr => clrFsm1,
		bout => bout1,
		cnt => cntFsm1,
		o2 => o2Fsm1,
		o1 => o1Fsm1,
		o0 => o0Fsm1
	);

end architecture;