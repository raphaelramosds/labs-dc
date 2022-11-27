ENTITY Inc4 IS
    PORT (
        a0, a1, a2, a3 : IN BIT;
        o0, o1, o2, o3 : OUT BIT
    );
END ENTITY;

ARCHITECTURE main OF Inc4 IS

    COMPONENT HAdder IS
        PORT (
            a, b : IN BIT;
            s, c : OUT BIT
        );
    END COMPONENT;

    SIGNAL has0 : BIT;
    SIGNAL has1 : BIT;
    SIGNAL has2 : BIT;

    SIGNAL one : BIT := '1';

BEGIN

    ha0 : HAdder PORT MAP(
        a => one,
        b => a0,
        s => o0,
        c => has0
    );

    ha1 : HAdder PORT MAP(
        a => has0,
        b => a1,
        s => o1,
        c => has1
    );

    ha2 : HAdder PORT MAP(
        a => has1,
        b => a2,
        s => o2,
        c => has2
    );

    ha3 : HAdder PORT MAP(
        a => has2,
        b => a3,
        s => o3
    );

END ARCHITECTURE;