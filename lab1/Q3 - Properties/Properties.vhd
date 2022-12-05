ENTITY Properties IS

	PORT (
		-- Inputs

		a : IN BIT;
		b : IN BIT;
		c : IN BIT;

		-- Identities

		i01 : OUT BIT; -- i1 = A + 0
		i02 : OUT BIT; -- i2 = A.1
		i03 : OUT BIT; -- i3 = A

		-- Commutative

		c11 : OUT BIT; -- c11 = A + B 
		c12 : OUT BIT; -- c12 = B + A

		c21 : OUT BIT; -- c21 = A.B 
		c22 : OUT BIT; -- c22 = B.A

		-- Associative

		a11 : OUT BIT;
		a12 : OUT BIT;

		a21 : OUT BIT;
		a22 : OUT BIT;

		-- Distributions

		d11 : OUT BIT;
		d12 : OUT BIT;

		d21 : OUT BIT;
		d22 : OUT BIT;

		-- D'Morgan's Laws

		m11 : OUT BIT;
		m12 : OUT BIT;

		m21 : OUT BIT;
		m22 : OUT BIT
	);

END Properties;

ARCHITECTURE main OF Properties IS
BEGIN

	-- Output of Identities

	i01 <= a OR '0';
	i02 <= a AND '1';
	i03 <= NOT(not(a));

	-- Commutative output

	c11 <= a OR b;
	c12 <= b OR a;

	c21 <= a AND b;
	c22 <= b AND a;

	-- Associative output

	a11 <= a OR (b OR c);
	a12 <= (a OR b) OR c;

	a21 <= a AND (b AND c);
	a22 <= (a AND b) AND c;

	-- Distributions outputs

	d11 <= a AND (b OR c);
	d12 <= (a AND b) OR (a AND c);

	d21 <= a OR (b AND c);
	d22 <= (a OR b) AND (a OR c);

	-- D'Morgan's Laws output

	m11 <= NOT(a AND b);
	m12 <= NOT(a) OR NOT(b);

	m21 <= NOT(a OR b);
	m22 <= NOT(a) AND NOT(b);

END main;