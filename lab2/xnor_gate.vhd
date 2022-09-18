entity xnor_gate is
	port(
		xnor_in1, xnor_in2 : in bit;
		xnor_out : out bit
	);
end entity;

architecture main of xnor_gate is
begin
	xnor_out <= not(xnor_in1) and not(xnor_in2) or xnor_in1 and xnor_in2;
end architecture;