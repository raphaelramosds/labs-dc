ENTITY DigitalClock IS
	PORT (
		ld, clear, clk, cnt,
		hd0_in, hd1_in, hd2_in, hd3_in, -- horas
		hu0_in, hu1_in, hu2_in, hu3_in,

		md0_in, md1_in, md2_in, md3_in, -- minutos
		mu0_in, mu1_in, mu2_in, mu3_in,

		sd0_in, sd1_in, sd2_in, sd3_in, -- segundos
		su0_in, su1_in, su2_in, su3_in : IN BIT;

		hd0_out, hd1_out, hd2_out, hd3_out, hd4_out, hd5_out, hd6_out, -- horas
		hu0_out, hu1_out, hu2_out, hu3_out, hu4_out, hu5_out, hu6_out,

		md0_out, md1_out, md2_out, md3_out, md4_out, md5_out, md6_out, -- minutos	
		mu0_out, mu1_out, mu2_out, mu3_out, mu4_out, mu5_out, mu6_out,

		sd0_out, sd1_out, sd2_out, sd3_out, sd4_out, sd5_out, sd6_out, -- segundos
		su0_out, su1_out, su2_out, su3_out, su4_out, su5_out, su6_out : OUT BIT
	);
END;

ARCHITECTURE main OF DigitalClock IS

	COMPONENT LimitedUpCounter IS
		PORT (
			pin0, pin1, pin2, pin3,
			l0, l1, l2, l3,
			load, clr, count, clk1 : IN BIT;
			t3, t2, t1, t0, tc : OUT BIT
		);
	END COMPONENT;

	COMPONENT SSDisplay IS
		PORT (
			A3, A2, A1, A0 : IN BIT;
			S6, S5, S4, S3, S2, S1, S0 : OUT BIT
		);
	END COMPONENT;

	COMPONENT Comparator4 IS
		PORT (
			a3, a2, a1, a0, b3, b2, b1, b0 : IN BIT;
			eq : OUT BIT
		);
	END COMPONENT;

	COMPONENT Mux4 IS
		PORT (
			A0, A1, A2, A3, B0, B1, B2, B3, s_in : IN BIT;
			S0, S1, S2, S3 : OUT BIT
		);
	END COMPONENT;

	COMPONENT AndGate IS
		PORT (
			a, b : IN BIT;
			s : OUT BIT
		);
	END COMPONENT;

	-- Contador de Segundos (unidade) -> SSDisplay

	SIGNAL csu_ssd0 : BIT;
	SIGNAL csu_ssd1 : BIT;
	SIGNAL csu_ssd2 : BIT;
	SIGNAL csu_ssd3 : BIT;

	-- Contador de Segundos (dezena) -> SSDisplay

	SIGNAL csd_ssd0 : BIT;
	SIGNAL csd_ssd1 : BIT;
	SIGNAL csd_ssd2 : BIT;
	SIGNAL csd_ssd3 : BIT;

	-- Contador de Minutos (unidade) -> SSDisplay

	SIGNAL cmu_ssd0 : BIT;
	SIGNAL cmu_ssd1 : BIT;
	SIGNAL cmu_ssd2 : BIT;
	SIGNAL cmu_ssd3 : BIT;

	-- Contador de Minutos (dezena) -> SSDisplay

	SIGNAL cmd_ssd0 : BIT;
	SIGNAL cmd_ssd1 : BIT;
	SIGNAL cmd_ssd2 : BIT;
	SIGNAL cmd_ssd3 : BIT;

	-- Contador de Horas (unidade) -> SSDisplay

	SIGNAL chu_ssd0 : BIT;
	SIGNAL chu_ssd1 : BIT;
	SIGNAL chu_ssd2 : BIT;
	SIGNAL chu_ssd3 : BIT;

	-- Contador de Horas (dezena) -> SSDisplay

	SIGNAL chd_ssd0 : BIT;
	SIGNAL chd_ssd1 : BIT;
	SIGNAL chd_ssd2 : BIT;
	SIGNAL chd_ssd3 : BIT;

	-- Constantes de controle do Mux 2x1 e dos Contadores

	SIGNAL two0 : BIT := '0'; -- 2 = 0010
	SIGNAL two1 : BIT := '1';
	SIGNAL two2 : BIT := '0';
	SIGNAL two3 : BIT := '0';

	SIGNAL nine0 : BIT := '1'; -- 9 = 1001
	SIGNAL nine1 : BIT := '0';
	SIGNAL nine2 : BIT := '0';
	SIGNAL nine3 : BIT := '1';

	SIGNAL three0 : BIT := '1'; -- 3 = 0011
	SIGNAL three1 : BIT := '1';
	SIGNAL three2 : BIT := '0';
	SIGNAL three3 : BIT := '0';

	SIGNAL five0 : BIT := '1'; -- 5 = 0101
	SIGNAL five1 : BIT := '0';
	SIGNAL five2 : BIT := '1';
	SIGNAL five3 : BIT := '0';

	-- Comparator4 -> Mux4

	SIGNAL comp4_mux : BIT;

	-- Mux4 -> Contador de Horas (unidade)

	SIGNAL mchu0 : BIT;
	SIGNAL mchu1 : BIT;
	SIGNAL mchu2 : BIT;
	SIGNAL mchu3 : BIT;

	-- SSDisplay -> Saída de Segundos (unidade)

	SIGNAL sec0u : BIT;
	SIGNAL sec1u : BIT;
	SIGNAL sec2u : BIT;
	SIGNAL sec3u : BIT;
	SIGNAL sec4u : BIT;
	SIGNAL sec5u : BIT;
	SIGNAL sec6u : BIT;

	-- SSDisplay -> Saída de Segundos (dezena)

	SIGNAL sec0d : BIT;
	SIGNAL sec1d : BIT;
	SIGNAL sec2d : BIT;
	SIGNAL sec3d : BIT;
	SIGNAL sec4d : BIT;
	SIGNAL sec5d : BIT;
	SIGNAL sec6d : BIT;

	-- SSDisplay -> Saída de minutos (unidade)

	SIGNAL min0u : BIT;
	SIGNAL min1u : BIT;
	SIGNAL min2u : BIT;
	SIGNAL min3u : BIT;
	SIGNAL min4u : BIT;
	SIGNAL min5u : BIT;
	SIGNAL min6u : BIT;

	-- SSDisplay -> Saída de minutos (dezena)

	SIGNAL min0d : BIT;
	SIGNAL min1d : BIT;
	SIGNAL min2d : BIT;
	SIGNAL min3d : BIT;
	SIGNAL min4d : BIT;
	SIGNAL min5d : BIT;
	SIGNAL min6d : BIT;

	-- SSDisplay -> Saída de horas (unidade)

	SIGNAL hour0u : BIT;
	SIGNAL hour1u : BIT;
	SIGNAL hour2u : BIT;
	SIGNAL hour3u : BIT;
	SIGNAL hour4u : BIT;
	SIGNAL hour5u : BIT;
	SIGNAL hour6u : BIT;

	-- SSDisplay -> Saída de horas (dezena)

	SIGNAL hour0d : BIT;
	SIGNAL hour1d : BIT;
	SIGNAL hour2d : BIT;
	SIGNAL hour3d : BIT;
	SIGNAL hour4d : BIT;
	SIGNAL hour5d : BIT;
	SIGNAL hour6d : BIT;

BEGIN

	-- Alternar Noite/Madrugada no Mux 2x1

	mux4_night_moon : Mux4 PORT MAP(
		A0 => nine0,
		A1 => nine1,
		A2 => nine2,
		A3 => nine3,
		B0 => three0,
		B1 => three1,
		B2 => three2,
		B3 => three3,
		s_in => comp4_mux,
		S0 => mchu0,
		S1 => mchu1,
		S2 => mchu2,
		S3 => mchu3
	);

	-- Contadores

	hoursd_counter : LimitedUpCounter PORT MAP(
		pin0 =>, 
		pin1 =>, 
		pin2 =>, 
		pin3 =>, 
		l0 => two0, 
		l1 => two1, 
		l2 => two2, 
		l3 => two3, 
		load => ld, 
		clr => clear, 
		count => cnt, 
		clk1 => clk,
		t3 => chd_ssd3, 
		t2 => chd_ssd2, 
		t1 => chd_ssd1, 
		t0 => chd_ssd0, 
		tc =>
	);

	hoursu_counter : LimitedUpCounter PORT MAP(
		pin0 =>, 
		pin1 =>, 
		pin2 =>, 
		pin3 =>, 
		l0 => mchu0, 
		l1 => mchu1, 
		l2 => mchu2, 
		l3 => mchu3, 
		load => ld, 
		clr => clear, 
		count => cnt, 
		clk1 => clk,
		t3 => chu_ssd3, 
		t2 => chu_ssd2, 
		t1 => chu_ssd1, 
		t0 => chu_ssd0, 
		tc =>
	);

	minu_counter : LimitedUpCounter PORT MAP(
		pin0 =>, 
		pin1 =>, 
		pin2 =>, 
		pin3 =>, 
		l0 => nine0, 
		l1 => nine1, 
		l2 => nine2, 
		l3 => nine3, 
		load => ld, 
		clr => clear, 
		count => cnt, 
		clk1 => clk,
		t3 => cmu_ssd3, 
		t2 => cmu_ssd2, 
		t1 => cmu_ssd1, 
		t0 => cmu_ssd0, 
		tc =>
	);

	mind_counter : LimitedUpCounter PORT MAP(
		pin0 =>, 
		pin1 =>, 
		pin2 =>, 
		pin3 =>, 
		l0 => five0, 
		l1 => five1, 
		l2 => five2, 
		l3 => five3, 
		load => ld, 
		clr => clear, 
		count => cnt, 
		clk1 => clk,
		t3 => cmd_ssd3, 
		t2 => cmd_ssd2, 
		t1 => cmd_ssd1, 
		t0 => cmd_ssd0, 
		tc =>
	);

	secu_counter : LimitedUpCounter PORT MAP(
		pin0 =>, 
		pin1 =>, 
		pin2 =>, 
		pin3 =>, 
		l0 => nine0, 
		l1 => nine1, 
		l2 => nine2, 
		l3 => nine3, 
		load => ld, 
		clr => clear, 
		count => cnt, 
		clk1 => clk,
		t3 => csu_ssd3, 
		t2 => csu_ssd2, 
		t1 => csu_ssd1, 
		t0 => csu_ssd0, 
		tc =>
	);

	secd_counter : LimitedUpCounter PORT MAP(
		pin0 =>, 
		pin1 =>, 
		pin2 =>, 
		pin3 =>, 
		l0 => five0, 
		l1 => five1, 
		l2 => five2, 
		l3 => five3, 
		load => ld, 
		clr => clear, 
		count => cnt, 
		clk1 => clk,
		t3 => csd_ssd3, 
		t2 => csd_ssd2, 
		t1 => csd_ssd1, 
		t0 => csd_ssd0,
		tc =>
	);

	-- Saída dos segundos (unidade e dezena)

	secu_display : SSDisplay PORT MAP(
		A3 => csu_ssd3,
		A2 => csu_ssd2,
		A1 => csu_ssd1,
		A0 => csu_ssd0,
		S6 => sec6u,
		S5 => sec5u,
		S4 => sec4u,
		S3 => sec3u,
		S2 => sec2u,
		S1 => sec1u,
		S0 => sec0u
	);

	secd_display : SSDisplay PORT MAP(
		A3 => csd_ssd3,
		A2 => csd_ssd2,
		A1 => csd_ssd1,
		A0 => csd_ssd0,
		S6 => sec6d,
		S5 => sec5d,
		S4 => sec4d,
		S3 => sec3d,
		S2 => sec2d,
		S1 => sec1d,
		S0 => sec0d
	);

	sd0_out <= sec0d;
	sd1_out <= sec1d;
	sd2_out <= sec2d;
	sd3_out <= sec3d;
	sd4_out <= sec4d;
	sd5_out <= sec5d;
	sd6_out <= sec6d;

	su0_out <= sec0u;
	su1_out <= sec1u;
	su2_out <= sec2u;
	su3_out <= sec3u;
	su4_out <= sec4u;
	su5_out <= sec5u;
	su6_out <= sec6u;

	-- Saída dos minutos (unidade e dezena)

	minu_display : SSDisplay PORT MAP(
		A3 => cmu_ssd3,
		A2 => cmu_ssd2,
		A1 => cmu_ssd1,
		A0 => cmu_ssd0,
		S6 => min6u,
		S5 => min5u,
		S4 => min4u,
		S3 => min3u,
		S2 => min2u,
		S1 => min1u,
		S0 => min0u
	);

	mind_display : SSDisplay PORT MAP(
		A3 => cmd_ssd3,
		A2 => cmd_ssd2,
		A1 => cmd_ssd1,
		A0 => cmd_ssd0,
		S6 => min6d,
		S5 => min5d,
		S4 => min4d,
		S3 => min3d,
		S2 => min2d,
		S1 => min1d,
		S0 => min0d
	);

	md0_out <= min0d;
	md1_out <= min1d;
	md2_out <= min2d;
	md3_out <= min3d;
	md4_out <= min4d;
	md5_out <= min5d;
	md6_out <= min6d;

	mu0_out <= min0u;
	mu1_out <= min1u;
	mu2_out <= min2u;
	mu3_out <= min3u;
	mu4_out <= min4u;
	mu5_out <= min5u;
	mu6_out <= min6u;

	-- Saída das horas (unidade e dezena)

	houru_display : SSDisplay PORT MAP(
		A3 => chu_ssd3,
		A2 => chu_ssd2,
		A1 => chu_ssd1,
		A0 => chu_ssd0,
		S6 => hour6u,
		S5 => hour5u,
		S4 => hour4u,
		S3 => hour3u,
		S2 => hour2u,
		S1 => hour1u,
		S0 => hour0u
	);

	hourd_display : SSDisplay PORT MAP(
		A3 => chd_ssd3,
		A2 => chd_ssd2,
		A1 => chd_ssd1,
		A0 => chd_ssd0,
		S6 => hour6d,
		S5 => hour5d,
		S4 => hour4d,
		S3 => hour3d,
		S2 => hour2d,
		S1 => hour1d,
		S0 => hour0d
	);

	hourd_comp4 : Comparator4 PORT MAP(
		a3 => two3,
		a2 => two2,
		a1 => two1,
		a0 => two0,
		b3 => chd_ssd3,
		b2 => chd_ssd2,
		b1 => chd_ssd1,
		b0 => chd_ssd0,
		eq => comp4_mux,
	);

	hd0_out <= hour0d;
	hd1_out <= hour1d;
	hd2_out <= hour2d;
	hd3_out <= hour3d;
	hd4_out <= hour4d;
	hd5_out <= hour5d;
	hd6_out <= hour6d;

	hu0_out <= hour0u;
	hu1_out <= hour1u;
	hu2_out <= hour2u;
	hu3_out <= hour3u;
	hu4_out <= hour4u;
	hu5_out <= hour5u;
	hu6_out <= hour6u;

END;