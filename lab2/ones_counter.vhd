entity ones_counter is
	port(
		A, B, C : in bit;
		S1, S2 : out bit
	);
end entity;

architecture main of ones_counter is

	-- Sinais de saida para S1
	
	signal S1C1: bit; -- C.B
	signal S1C2: bit; -- C + B
	signal S1C3: bit; -- A(C + B)
	
	-- Sinais da saida para S2

	signal S2C1 : bit; -- (B xor C) 
	signal S2C2 : bit; -- (B nor C)
	signal S2C3 : bit; -- A.(B xor C)
	signal S2C4 : bit; -- not(A).(B nor C) 
	
	-- Componentes
	
	component and_gate is
		port(
		and_in1, and_in2 : in bit;
		and_out : out bit
	);
	end component;
	
	component or_gate is
		port(
		or_in1, or_in2 : in bit;
		or_out : out bit
	);
	end component;
	
	component xor_gate is
		port(
		xor_in1, xor_in2 : in bit;
		xor_out : out bit
		);
	end component;
	
	component xnor_gate is
		port(
		xnor_in1, xnor_in2 : in bit;
		xnor_out : out bit
	);
	end component;
	
begin

	-- Operacoes de S1
	
	u1: and_gate port map(
		and_in1 => C,
		and_in2 => B,
		and_out => S1C1 -- CB
	);
	
	u2: or_gate port map(
		or_in1 => C,
		or_in2 => B,
		or_out => S1C2 -- C + B
	);
	
	u3: and_gate port map(
		and_in1 => A,
		and_in2 => S1C2,
		and_out => S1C3 -- A.(C + B)
	);
	
	u4: or_gate port map( 
		or_in1 => S1C1,
		or_in2 => S1C3,
		or_out => S1 -- CB + A.(C+B)
	);

	-- Operacoes de S2
	
	u5: xor_gate port map(
		xor_in1 => B,
		xor_in2 => C,
		xor_out => S2C1 -- B(+)C
	);
	
	u6: xnor_gate port map(
		xnor_in1 => B,
		xnor_in2 => C,
		xnor_out => S2C2 -- B(.)C
	);
	
	u7: and_gate port map(
		and_in1 => not(A),
		and_in2 => S2C1,
		and_out => S2C3 -- not(A).(B(+)C)
	);
	
	u8: and_gate port map(
		and_in1 => A,
		and_in2 => S2C2,
		and_out => S2C4 -- A.(B(.)C)
	);
	
	u9: or_gate port map(
		or_in1 => S2C3,
		or_in2 => S2C4,
		or_out => S2
	);
	
end architecture main;