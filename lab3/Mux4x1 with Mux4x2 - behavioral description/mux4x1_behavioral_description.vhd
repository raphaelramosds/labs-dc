entity mux4x1_behavioral_description is
  port(
    I0, I1, I2, I3 : in bit; -- Inputs
    s0_in, s1_in    : in bit; -- Signals
    S              : out bit -- Output
  );
end mux4x1_behavioral_description;

architecture behav of mux4x1_behavioral_description is
  signal S0: bit;
  signal S1: bit;
  component Mux2x1BehavioralDescription is
    port(
      I0, I1, s_in : in bit;
      S            : out bit
    );
  end component;
  
begin
  u1 : Mux2x1BehavioralDescription port map(I0 => I0, I1 => I1, s_in => s1_in, S => S0);
  u2 : Mux2x1BehavioralDescription port map(I0 => I2, I1 => I3, s_in => s1_in, S => S1);
  u3 : Mux2x1BehavioralDescription port map(I0 => S0, I1 => S1, s_in => s0_in, S => S);
end architecture;
