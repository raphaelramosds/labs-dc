ENTITY OnesCounter IS
	PORT (
		A, B, C : IN BIT;
		S1, S2 : OUT BIT
	);
END ENTITY;

ARCHITECTURE main OF OnesCounter IS

	-- Sinais de saida para S1

	SIGNAL S1C1 : BIT; -- C.B
	SIGNAL S1C2 : BIT; -- C + B
	SIGNAL S1C3 : BIT; -- A(C + B)

	-- Sinais da saida para S2

	SIGNAL S2C1 : BIT; -- (B xor C) 
	SIGNAL S2C2 : BIT; -- (B nor C)
	SIGNAL S2C3 : BIT; -- A.(B xor C)
	SIGNAL S2C4 : BIT; -- not(A).(B nor C) 

	-- Componentes

	COMPONENT ANDGate IS
		PORT (
			and_in1, and_in2 : IN BIT;
			and_out : OUT BIT
		);
	END COMPONENT;

	COMPONENT ORGate IS
		PORT (
			or_in1, or_in2 : IN BIT;
			or_out : OUT BIT
		);
	END COMPONENT;

	COMPONENT XORGate IS
		PORT (
			xor_in1, xor_in2 : IN BIT;
			xor_out : OUT BIT
		);
	END COMPONENT;

	COMPONENT XNORGate IS
		PORT (
			xnor_in1, xnor_in2 : IN BIT;
			xnor_out : OUT BIT
		);
	END COMPONENT;

BEGIN

	-- Operacoes de S1

	u1 : ANDGate PORT MAP(
		and_in1 => C,
		and_in2 => B,
		and_out => S1C1 -- CB
	);

	u2 : ORGate PORT MAP(
		or_in1 => C,
		or_in2 => B,
		or_out => S1C2 -- C + B
	);

	u3 : ANDGate PORT MAP(
		and_in1 => A,
		and_in2 => S1C2,
		and_out => S1C3 -- A.(C + B)
	);

	u4 : ORGate PORT MAP(
		or_in1 => S1C1,
		or_in2 => S1C3,
		or_out => S1 -- CB + A.(C+B)
	);

	-- Operacoes de S2

	u5 : XORGate PORT MAP(
		xor_in1 => B,
		xor_in2 => C,
		xor_out => S2C1 -- B(+)C
	);

	u6 : XNORGate PORT MAP(
		xnor_in1 => B,
		xnor_in2 => C,
		xnor_out => S2C2 -- B(.)C
	);

	u7 : ANDGate PORT MAP(
		and_in1 => NOT(A),
		and_in2 => S2C1,
		and_out => S2C3 -- not(A).(B(+)C)
	);

	u8 : ANDGate PORT MAP(
		and_in1 => A,
		and_in2 => S2C2,
		and_out => S2C4 -- A.(B(.)C)
	);

	u9 : ORGate PORT MAP(
		or_in1 => S2C3,
		or_in2 => S2C4,
		or_out => S2
	);

END ARCHITECTURE main;