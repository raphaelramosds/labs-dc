ENTITY Mux2x1 IS
    PORT (
        s, I0, I1 : IN BIT;
        d : OUT BIT
    );
END ENTITY;

ARCHITECTURE main OF Mux2x1 IS
BEGIN
    -- I0 é o LSB
    d <= (NOT(s) AND I0) OR (s AND I1);
END ARCHITECTURE;