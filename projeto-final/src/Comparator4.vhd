ENTITY Comparator4 IS
    PORT (
        a3, a2, a1, a0, b3, b2, b1, b0 : IN BIT;
        eq : OUT BIT
    );
END Comparator4;

ARCHITECTURE main OF Comparator4 IS
BEGIN
    eq <= (a3 NOR b3) AND (a2 NOR b2) AND (a1 NOR b1) AND (a0 AND b0);
END ARCHITECTURE main;