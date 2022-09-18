entity xor_gate is
	port(
		xor_in1, xor_in2 : in bit;
		xor_out : out bit
	);
end entity;

architecture main of xor_gate is
begin
	xor_out <= xor_in1 and not(xor_in2) or not(xor_in1) and xor_in2;
end architecture;