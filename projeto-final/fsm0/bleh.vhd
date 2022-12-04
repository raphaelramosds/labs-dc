ENTITY bleh IS
    PORT (
        r, s, t, i02, i01, i0a : IN BIT;
        clr_cron, cnt_cron, clr_time, cnt_time, sel, o2, o1, o0 : OUT BIT
    );
END ENTITY;

ARCHITECTURE main OF bleh IS
BEGIN

sel <= not(i02 or i01) or (i02 and (i0a or i01));
clr_cron <= (not(i02 or i01)) or (i01 and i0a) or (i02 and not(i01) and i0a) or (i02 and i01 and not(i0a));
cnt_cron <= i02 and not(i01) and not(i0a);
clr_time <= not(i02 or i01 or i0a);
cnt_time <= '1';
o2 <= (not(r or s) and t and not(i02) and i01 and not(i0a)) or (not(r or s or t) and i02 and not(i01) and not(i0a));
o1 <= (s and ( not(i02) and not(i01) and i0a)) or (not(r or s or t) and not(i02) and i01 and not(i0a)) or (r and not(s) and not(i02) and i01 and not(i0a)) or (not(i02) and i01 and i0a) or ((i02 and not(i01) and not(i0a)) and ((not(r) and not(s) and t) or (r and not(s))));
o0 <= (not(i02 or i01) and (not(i0a) or not(s))) or ( not(i02) and i01 and not(i0a) and (s or r) ) or ( i02 and not(i01) and not(i0a) and (s or r) ) or ( i02 and (i01 or i0a) );

--(not(i02 or i01 or i0a)) or ( not(s) and not(i02) and not(i01) and i0a ) or ((r or s) and not(i02) and i01 and not(i0a)) or ((i01 or i0a) and i02);

END ARCHITECTURE;