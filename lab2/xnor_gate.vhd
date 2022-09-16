entity xnor_gate is
	port(
		xnor_in_1, xnor_in_2 : in bit;
		xnor_out : out bit;
	);
end entity;

architecture main of xnor_gate is
begin
	xnor_out <= xnor_in_1 and xnor_in_2 or not(xnor_in_1) and not(xnor_in_2);
end architecture;