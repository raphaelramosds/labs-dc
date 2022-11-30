ENTITY XOrGate IS
	PORT (
		xor_in1, xor_in2 : IN BIT;
		xor_out : OUT BIT
	);
END ENTITY;

ARCHITECTURE main OF XOrGate IS
BEGIN
	xor_out <= (xor_in1 AND NOT(xor_in2)) OR (NOT(xor_in1) AND xor_in2);
END ARCHITECTURE;