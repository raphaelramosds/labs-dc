ENTITY UpCounterSLC IS
	PORT (
		ec0, ec1, ec2, ec3, ld, cnt, clear, clk0 : IN BIT; -- Entradas do contador (ec)
		q0, q1, q2, q3 : OUT BIT -- Saídas do qontador (q)
	);
END UpCounterSLC;

ARCHITECTURE main OF UpCounterSLC IS

	COMPONENT Inc4 IS
		PORT (
			a0, a1, a2, a3 : IN BIT;
			o0, o1, o2, o3 : OUT BIT
		);
	END COMPONENT;

	COMPONENT Mux4x1 IS
		PORT (
			I0, I1, I2, I3 : IN BIT;
			s0_in, s1_in : IN BIT;
			S : OUT BIT
		);
	END COMPONENT;

	COMPONENT RegSC IS
		PORT (
			clk, e3, e2, e1, e0, clr : IN BIT;
			s3, s2, s1, s0 : OUT BIT
		);
	END COMPONENT;

	-- Mux4x1 -> RegSC

	SIGNAL mr0 : BIT;
	SIGNAL mr1 : BIT;
	SIGNAL mr2 : BIT;
	SIGNAL mr3 : BIT;

	-- RegSC -> Inc4

	SIGNAL ri0 : BIT;
	SIGNAL ri1 : BIT;
	SIGNAL ri2 : BIT;
	SIGNAL ri3 : BIT;

	-- Inc4 -> Mux4x1

	SIGNAL im0 : BIT;
	SIGNAL im1 : BIT;
	SIGNAL im2 : BIT;
	SIGNAL im3 : BIT;

BEGIN

	reg : RegSC PORT MAP(

		clk => clk0,

		e3 => mr3,
		e2 => mr2,
		e1 => mr1,
		e0 => mr0,

		s3 => ri3,
		s2 => ri2,
		s1 => ri1,
		s0 => ri0,

		clr => clear
	);

	inc : Inc4 PORT MAP(
		a0 => ri0,
		a1 => ri1,
		a2 => ri2,
		a3 => ri3,
		o0 => im0,
		o1 => im1,
		o2 => im2,
		o3 => im3
	);

	mux0 : Mux4x1 PORT MAP(
		I0 => ri0,
		I1 => im0,
		I2 => ec0,
		I3 => ec0,
		s0_in => ld,
		s1_in => cnt,
		S => mr0
	);

	mux1 : Mux4x1 PORT MAP(
		I0 => ri1,
		I1 => im1,
		I2 => ec1,
		I3 => ec1,
		s0_in => ld,
		s1_in => cnt,
		S => mr1
	);

	mux2 : Mux4x1 PORT MAP(
		I0 => ri2,
		I1 => im2,
		I2 => ec2,
		I3 => ec2,
		s0_in => ld,
		s1_in => cnt,
		S => mr2
	);

	mux3 : Mux4x1 PORT MAP(
		I0 => ri3,
		I1 => im3,
		I2 => ec3,
		I3 => ec3,
		s0_in => ld,
		s1_in => cnt,
		S => mr3
	);

	q0 <= ri0;
	q1 <= ri1;
	q2 <= ri2;
	q3 <= ri3;

END ARCHITECTURE main;