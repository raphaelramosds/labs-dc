entity properties is

	port (
		-- Inputs
		
		a 	: in bit;
		b	: in bit;
		c 	: in bit;
		
		-- Identities
		
		i01	: out bit; -- i1 = A + 0
		i02	: out bit; -- i2 = A.1
		i03	: out bit; -- i3 = A
		
		-- Commutative

		c11 : out bit; -- c11 = A + B 
		c12 : out bit;	-- c12 = B + A
		
		c21 : out bit; -- c21 = A.B 
		c22 : out bit; -- c22 = B.A
		
		-- Associative
		
		a11 : out bit;
		a12 : out bit;
		
		a21 : out bit;
		a22 : out bit;
		
		-- Distributions
		
		d11 : out bit; 
		d12 : out bit;
		
		d21 : out bit;
		d22 : out bit;
		
		-- D'Morgan's Laws
		
		m11 : out bit; 
		m12 : out bit;
		
		m21 : out bit;
		m22 : out bit
	);
	
end properties;

architecture main of properties is
begin

	-- Output of Identities
	
	i01 <= a or '0';
	i02 <= a and '1';
	i03 <= not(not(a));
	
	-- Commutative output
	
	c11 <= a or b;
	c12 <= b or a;
	
	c21 <= a and b;
	c22 <= b and a;
		
	-- Associative output
	
	a11 <= a or (b or c);
	a12 <= (a or b) or c;
	
	a21 <= a and (b and c);
	a22 <= (a and b) and c;
		
	-- Distributions outputs
	
	d11 <= a and (b or c); 
	d12 <= (a and b) or (a and c);
	
	d21 <= a or (b and c);
	d22 <= (a or b) and (a or c);
	
	-- D'Morgan's Laws output
	
	m11 <= not(a and b); 
	m12 <= not(a) or not(b);
	
	m21 <= not(a or b);
	m22 <= not(a) and not(b);
	
end main;