entity and_gate is
	port(
		and_in_1, and_in_2 : in bit;
		and_out : out bit;
	);
end entity;

architecture main of and_gate is
begin
	and_out <= and_in_1 and and_in_2;
end architecture;