entity mux4x1_behavioral_description is
  port(
  
	 -- Inputs
    I0, I1, I2, I3 : in bit; 
	 
	 -- Signals
    s0_in, s1_in : in bit; 
	 
	 -- Output
    S : out bit 
	 
  );
end mux4x1_behavioral_description;

architecture behav of mux4x1_behavioral_description is

  signal D0: bit;
  signal D1: bit;
  
  -- 2X1 Mux 
  
  component Mux2x1BehavioralDescription is
    port(
      I0, I1, s_in : in bit; -- I0 : LSB
      S            : out bit
    );
  end component;
  
begin
	
	-- 1° MUX recebe I0 e I1, om seletor s0_in
	
	u1 : Mux2x1BehavioralDescription port map(I0 => I0, I1 => I1, s_in => s0_in, S => D0);
	
	-- 2° MUX recebe I2 e I3, com seletor s0_in
	
	u2 : Mux2x1BehavioralDescription port map(I0 => I2, I1 => I3, s_in => s0_in, S => D1);
	
	-- Último MUX recebe D0 e D1, com seletor s1_in
	
	u3 : Mux2x1BehavioralDescription port map(I0 => D0, I1 => D1, s_in => s1_in, S => S);
	
end architecture;
