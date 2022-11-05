entity and_gate is
	port(
		a, b : in bit;
		s    : out bit
	);
end and_gate;

architecture main of and_gate is
begin

	s <= a and b;
	
end architecture main;