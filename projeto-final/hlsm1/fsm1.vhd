ENTITY fsm1 IS
    PORT (
        bin, tc, c2, c1, c0 : IN BIT;
        clr, bout, cnt, o2, o1, o0 : OUT BIT
    );
END ENTITY;

ARCHITECTURE main OF fsm1 IS
BEGIN

    clr <= ((NOT bin) AND (NOT c2) AND (NOT c1) AND (NOT c0)) OR (bin AND (NOT c2) AND (NOT c1) AND (NOT c0)) OR (NOT(bin) AND (NOT c2) AND c1 AND c0) OR (bin AND (NOT c2) AND c1 AND c0) OR (c2 AND (NOT c1) AND c0) OR (c2 AND c1 AND (NOT c0)) OR (c2 AND c1 AND c0);

    bout <= (NOT(c2) AND NOT(c1) AND c0);

    cnt <= ((NOT tc) AND (NOT c2) AND c1 AND (NOT c0)) OR (tc AND (NOT c2) AND c1 AND c0) OR ((NOT tc) AND c2 AND (NOT c1) AND NOT(c0)) OR (tc AND c2 AND (NOT c1) AND (NOT c0));

    o2 <= ((NOT bin) AND (NOT c2) AND c1 AND c0) OR ((NOT tc) AND c2 AND (NOT c1) AND (NOT c0));

    o1 <= ((NOT c2) AND (NOT c1) AND c0) OR ((NOT tc) AND (NOT c2) AND c1 AND (NOT c0)) OR (tc AND (NOT c2) AND c1 AND (NOT c0)) OR (bin AND (NOT c2) AND c1 AND c0);

    o0 <= (bin AND (NOT c2) AND (NOT c1) AND (NOT c0)) OR (tc AND (NOT c2) AND c1 AND (NOT c0)) OR (bin AND (NOT c2) AND c1 AND c0);

END ARCHITECTURE;