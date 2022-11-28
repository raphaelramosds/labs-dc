ENTITY ORGate IS
	PORT (
		or_in1, or_in2 : IN BIT;
		or_out : OUT BIT
	);
END ENTITY;

ARCHITECTURE main OF ORGate IS
BEGIN
	or_out <= or_in1 OR or_in2;
END ARCHITECTURE;