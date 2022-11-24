entity mux2x1 is
    port(
        s, I0, I1 : in bit;
        d : out bit
    );
end entity;

architecture main of mux2x1 is
begin
    d <= (not(s) and I0) or (s and I1);
end architecture;