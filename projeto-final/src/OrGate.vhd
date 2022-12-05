ENTITY OrGate IS
	PORT (
		a, b : IN BIT;
		s : OUT BIT
	);
END OrGate;

ARCHITECTURE main OF OrGate IS
BEGIN
	s <= a OR b;
END ARCHITECTURE main;