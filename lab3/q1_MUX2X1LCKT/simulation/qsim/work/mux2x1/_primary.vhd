library verilog;
use verilog.vl_types.all;
entity mux2x1 is
    port(
        s               : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        d               : out    vl_logic
    );
end mux2x1;
