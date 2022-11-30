ENTITY AndGate IS
	PORT (
		a, b : IN BIT;
		s : OUT BIT
	);
END AndGate;

ARCHITECTURE main OF AndGate IS
BEGIN
	s <= a AND b;
END ARCHITECTURE main;