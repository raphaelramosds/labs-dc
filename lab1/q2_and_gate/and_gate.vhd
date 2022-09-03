entity and_gate is
	port (
		a	: in bit;
		b 	: in bit;
		s	: out bit
	);
end and_gate;

architecture top of and_gate is
begin 
	s <= a and b;
end top;