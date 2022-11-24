entity half_adder is
	port(
		a, b   : in bit;
		s, c   : out bit
	);
end half_adder;

architecture main of half_adder is
begin

	s <= (a or b) and (not (a and b));
	c <= a and b;
	
end architecture main;