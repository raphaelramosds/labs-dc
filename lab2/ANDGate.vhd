ENTITY ANDGate IS
	PORT (
		and_in1, and_in2 : IN BIT;
		and_out : OUT BIT
	);
END ENTITY;

ARCHITECTURE main OF ANDGate IS
BEGIN
	and_out <= and_in1 AND and_in2;
END ARCHITECTURE;