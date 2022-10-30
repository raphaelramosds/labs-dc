ENTITY decoder_for_seven_segment_display IS
  PORT (
    A3, A2, A1, A0 : IN BIT;
    S6, S5, S4, S3, S2, S1, S0 : OUT BIT
  );
END;

ARCHITECTURE behav OF decoder_for_seven_segment_display IS

  -- Vetores de bits

  SIGNAL out_aux : BIT_VECTOR(6 DOWNTO 0); -- 7-bit output
  SIGNAL in_aux : BIT_VECTOR(3 DOWNTO 0); -- 4-bit output

BEGIN

  -- Concatenacao da entrada

  in_aux <= A3 & A2 & A1 & A0;

  -- Bloco condicional da entrada

  WITH in_aux SELECT

  -- Atribuicoes do vetor de 7 bits para a saída

  out_aux <= "1000000" WHEN "0000",
             "1111001" WHEN "0001",
             "0100100" WHEN "0010",
             "0110000" WHEN "0011",
             "0011001" WHEN "0100",
             "0010010" WHEN "0101",
             "0000010" WHEN "0110",
             "1111000" WHEN "0111",
             "0000000" WHEN "1000",
             "0010000" WHEN "1001",
             "1111111" WHEN OTHERS;

  -- Atribuicao de cada saída para seu respectivo indíce no vetor

  S0 <= out_aux(0);
  S1 <= out_aux(1);
  S2 <= out_aux(2);
  S3 <= out_aux(3);
  S4 <= out_aux(4);
  S5 <= out_aux(5);
  S6 <= out_aux(6);

END;