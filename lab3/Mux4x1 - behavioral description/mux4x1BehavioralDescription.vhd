ENTITY Mux4x1BehavioralDescription IS
	PORT(
		I0, I1, I2, I3, s0_in, s1_in : IN BIT;
		S                            : OUT BIT
	);
END;

ARCHITECTURE behav OF Mux4x1BehavioralDescription IS
BEGIN
WITH (s1_in & s0_in) SELECT
	S <= I0 WHEN "00",
		   I1 WHEN "01",
       I2 WHEN "10",
       I3 WHEN "11";
END;
