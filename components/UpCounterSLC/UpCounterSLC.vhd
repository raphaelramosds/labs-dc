ENTITY UpCounterSLC IS
	PORT (
		ec0, ec1, ec2, ec3, ld, cnt, clr, clk0 : IN BIT; -- Entradas do contador (ec)
		q0, q1, q2, q3 : OUT BIT;
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

BEGIN

END ARCHITECTURE main;