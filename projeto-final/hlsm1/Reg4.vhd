ENTITY Reg4 IS
    PORT (
        clk0, d3, d2, d1, d0 : IN BIT;
        q3, q2, q1, q0 : OUT BIT
    );
END ENTITY;

ARCHITECTURE main OF Reg4 IS
    COMPONENT FlipFlopD IS
        PORT (
            clk, D : IN BIT;
            Q : OUT BIT
        );
    END COMPONENT;
BEGIN
    u0 : FlipFlopD PORT MAP(
        D => d0,
        Q => q0,
        clk => clk0
    );

    u1 : FlipFlopD PORT MAP(
        D => d1,
        Q => q1,
        clk => clk0
    );

    u2 : FlipFlopD PORT MAP(
        D => d2,
        Q => q2,
        clk => clk0
    );

    u3 : FlipFlopD PORT MAP(
        D => d3,
        Q => q3,
        clk => clk0
    );
END ARCHITECTURE;