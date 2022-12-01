ENTITY Mux4 IS
    PORT (
        A0, A1, A2, A3, B0, B1, B2, B3, s_in : IN BIT;
        S0, S1, S2, S3 : OUT BIT
    );
END;

ARCHITECTURE behav OF Mux4 IS
BEGIN
    p_mux : PROCESS (a0, a1, a2, a3, b0, b1, b2, b3, s_in)
    BEGIN
        IF (s_in = '0') THEN
            s0 <= a0;
            s1 <= a1;
            s2 <= a2;
            s3 <= a3;
        ELSE
            s0 <= b0;
            s1 <= b1;
            s2 <= b2;
            s3 <= b3;
        END IF;
    END PROCESS p_mux;
END;