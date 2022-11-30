ENTITY HAdder IS
	PORT (
		a, b : IN BIT;
		s, c : OUT BIT
	);
END HAdder;

ARCHITECTURE main OF HAdder IS
BEGIN

	s <= (a OR b) AND (NOT (a AND b));
	c <= a AND b;

END ARCHITECTURE main;