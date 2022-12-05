ENTITY LimitedUpCounter IS
  PORT (
    pin0, pin1, pin2, pin3, -- entradas do contador
    load, clr, count, clk1 : IN BIT;
    t3, t2, t1, t0, tc : OUT BIT -- saídas do contador
  );
END;

ARCHITECTURE main OF LimitedUpCounter IS

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

  COMPONENT OrGate IS
    PORT (
      a, b : IN BIT;
      s : OUT BIT
    );
  END COMPONENT;

  COMPONENT AndGate IS
    PORT (
      a, b : IN BIT;
      s : OUT BIT
    );
  END COMPONENT;

  -- Limite do contador eh 9

  SIGNAL l0 : BIT := '1';
  SIGNAL l1 : BIT := '0';
  SIGNAL l2 : BIT := '0';
  SIGNAL l3 : BIT := '1';

  -- UpCounterSLC -> Comp4

  SIGNAL uc0 : BIT;
  SIGNAL uc1 : BIT;
  SIGNAL uc2 : BIT;
  SIGNAL uc3 : BIT;

  -- Comp4 -> AndGate

  SIGNAL ca0 : BIT;

  -- AndGate -> OrGate

  SIGNAL ao0 : BIT;

  -- OrGate -> UpCounterSLC

  SIGNAL ou0 : BIT;

BEGIN

  ucslc : UpCounterSLC PORT MAP(
    ec0 => pin0,
    ec1 => pin1,
    ec2 => pin2,
    ec3 => pin3,
    ld => load,
    cnt => count,
    clear => ou0,
    clk0 => clk1,
    q0 => uc0,
    q1 => uc1,
    q2 => uc2,
    q3 => uc3
  );

  comp : Comparator4 PORT MAP(
    a3 => uc3,
    a2 => uc2,
    a1 => uc1,
    a0 => uc0,
    b3 => l3,
    b2 => l2,
    b1 => l1,
    b0 => l0,
    eq => ca0
  );

  portaand : AndGate PORT MAP(
    a => count,
    b => ca0,
    s => ao0
  );

  portaor : OrGate PORT MAP(
    a => ao0,
    b => clr,
    s => ou0
  );

  t3 <= uc3;
  t2 <= uc2;
  t1 <= uc1;
  t0 <= uc0;

  tc <= ca0;

END ARCHITECTURE main;