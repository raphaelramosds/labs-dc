entity and_gate is
	port(
		and_in1, and_in2 : in bit;
		and_out : out bit
	);
end entity;

architecture main of and_gate is
begin
	and_out <= and_in1 and and_in2;
end architecture;