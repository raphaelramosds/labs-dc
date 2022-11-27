ENTITY Mux4x1 IS
    PORT (
        I0, I1, I2, I3 : IN BIT;
        s0_in, s1_in : IN BIT;
        S : OUT BIT
    );
END Mux4x1;

ARCHITECTURE behav OF Mux4x1 IS

    SIGNAL D0 : BIT;
    SIGNAL D1 : BIT;

    COMPONENT Mux2x1 IS
        PORT (
            I0, I1, s_in : IN BIT; -- I0 : LSB
            S : OUT BIT
        );
    END COMPONENT;

BEGIN

    -- 1° MUX recebe I0 e I1, com seletor s0_in

    u1 : Mux2x1 PORT MAP(I0 => I0, I1 => I1, s_in => s0_in, S => D0);

    -- 2° MUX recebe I2 e I3, com seletor s0_in

    u2 : Mux2x1 PORT MAP(I0 => I2, I1 => I3, s_in => s0_in, S => D1);

    -- Último MUX recebe D0 e D1, com seletor s1_in

    u3 : Mux2x1 PORT MAP(I0 => D0, I1 => D1, s_in => s1_in, S => S);

END ARCHITECTURE;