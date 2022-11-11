entity or_gate is
	port(
		or_in1, or_in2 : in bit;
		or_out : out bit
	);
end entity;

architecture main of or_gate is
begin
	or_out <= or_in1 or or_in2;
end architecture;