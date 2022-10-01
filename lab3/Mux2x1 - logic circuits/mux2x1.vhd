entity mux2x1 is
    port(
        s, a, b : in bit;
        x : out bit
    );
end entity;

architecture main of mux2x1 is
begin
    x <= (not(s) and a) or (s and b);
end architecture;