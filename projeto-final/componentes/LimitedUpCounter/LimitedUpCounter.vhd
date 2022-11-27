ENTITY LimitedUpCounter IS
  PORT (
    pin0, pin1, pin2, pin3, -- entradas do contador
    load, clr, count, clk1 : IN BIT;
    t3, t2, t1, t0, tc : OUT BIT -- saídas do contador
  );
END;

ARCHITECTURE behav OF LimitedUpCounter IS

  COMPONENT UpCounterSLC IS
    PORT (
      ec0, ec1, ec2, ec3, ld, cnt, clear, clk0 : IN BIT; 
      q0, q1, q2, q3 : OUT BIT
    );
  END COMPONENT;

  COMPONENT Comparator4 IS
    PORT (
      a3, a2, a1, a0, b3, b2, b1, b0 : IN BIT;
      eq : OUT BIT
    );
  END COMPONENT;

  -- Limite do contador eh 8

  signal l0 : bit := '0';
  signal l1 : bit := '1';
  signal l2 : bit := '0';
  signal l3 : bit := '1';

  -- UpCounterSLC -> Comp4

  SIGNAL uc0 : BIT;
  SIGNAL uc1 : BIT;
  SIGNAL uc2 : BIT;
  SIGNAL uc3 : BIT;

BEGIN

END;