ENTITY XNorGate IS
	PORT (
		xnor_in1, xnor_in2 : IN BIT;
		xnor_out : OUT BIT
	);
END ENTITY;

ARCHITECTURE main OF XNorGate IS
BEGIN
	xnor_out <= (NOT(xnor_in1) AND NOT(xnor_in2)) OR (xnor_in1 AND xnor_in2);
END ARCHITECTURE;