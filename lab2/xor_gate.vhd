entity xor_gate is
	port(
		xor_in_1, xor_in_2 : in bit;
		xor_out : out bit;
	);
end entity;

architecture main of xor_gate is
begin
	xor_out <= xor_in_1 and not(xor_in_2) or not(xor_in_1) and xor_in_2;
end architecture;