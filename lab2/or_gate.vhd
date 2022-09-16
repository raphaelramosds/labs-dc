entity or_gate is
	port(
		or_in_1, or_in_2 : in bit;
		or_out : out bit;
	);
end entity;

architecture main of or_gate is
begin
	or_out <= or_in_1 and or_in_2;
end architecture;