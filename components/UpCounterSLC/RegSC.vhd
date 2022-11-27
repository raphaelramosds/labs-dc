ENTITY RegSC IS
    PORT (
        clk, e3, e2, e1, e0, clr : IN BIT;  -- Entradas
        s3, s2, s1, s0 : OUT BIT            -- Saídas
    );
END ENTITY;

ARCHITECTURE main OF RegSC IS

    COMPONENT Reg4 IS
        PORT (
            clk0, d3, d2, d1, d0 : IN BIT;
            q3, q2, q1, q0 : OUT BIT
        );
    END COMPONENT;
    
    COMPONENT Mux2x1 IS
        PORT (
            s, I0, I1 : IN BIT;
            d : OUT BIT
        );
    END COMPONENT;

    SIGNAL m0 : BIT;
    SIGNAL m1 : BIT;
    SIGNAL m2 : BIT;
    SIGNAL m3 : BIT;

    SIGNAL z : BIT := '0';

BEGIN

    r : Reg4 PORT MAP(
        clk0 => clk,
        d3 => m3,
        d2 => m2,
        d1 => m1,
        d0 => m0,
        q3 => s3,
        q2 => s2,
        q1 => s1,
        q0 => s0
    );

    mux0 : Mux2x1 PORT MAP(
        s => clr,
        I0 => e0,
        I1 => z,
        d => m0
    );

    mux1 : Mux2x1 PORT MAP(
        s => clr,
        I0 => e1,
        I1 => z,
        d => m1
    );

    mux2 : Mux2x1 PORT MAP(
        s => clr,
        I0 => e2,
        I1 => z,
        d => m2
    );

    mux3 : Mux2x1 PORT MAP(
        s => clr,
        I0 => e3,
        I1 => z,
        d => m3
    );

END ARCHITECTURE;