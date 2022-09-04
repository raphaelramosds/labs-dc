entity or_gate is
	port(
		a, b : in bit;
		s    : out bit
	);
end or_gate;

architecture main of or_gate is
begin

	s <= a or b;
	
end architecture main;