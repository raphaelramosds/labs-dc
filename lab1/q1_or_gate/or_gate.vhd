entity or_gate is
	port (
		a	: in bit;
		b 	: in bit;
		s	: out bit
	);
end or_gate;

architecture top of or_gate is
begin 
	s <= a or b;
end top;