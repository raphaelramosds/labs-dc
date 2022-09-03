entity properties is

	port (
		-- Entradas
		
		a 	: in bit;
		b	: in bit;
		c 	: in bit;
		
		-- Identidades
		
		i01	: out bit; -- i1 = A + 0
		i02	: out bit; -- i2 = A.1
		i03	: out bit; -- i3 = A
		
		-- Comutativas

		c11 : out bit; -- c11 = A + B 
		c12 : out bit;	-- c12 = B + A
		
		c21 : out bit; -- c21 = A.B 
		c22 : out bit; -- c22 = B.A
		
		-- Associativas
		
		a11 : out bit;
		a12 : out bit;
		
		a21 : out bit;
		a22 : out bit;
		
		-- Distributivas
		
		d11 : out bit; 
		d12 : out bit;
		
		d21 : out bit;
		d22 : out bit;
		
		-- Leis de D'Morgan
		
		m11 : out bit; 
		m12 : out bit;
		
		m21 : out bit;
		m22 : out bit
	);
	
end properties;

architecture top of properties is
begin

	-- Saída das Identidades
	
	i01 <= a or '0';
	i02 <= a and '1';
	i03 <= not(not(a));
	
	-- Saida das Comutativas
	
end top;