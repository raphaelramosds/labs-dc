library verilog;
use verilog.vl_types.all;
entity mux2x1_behavioral_description is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        s0              : in     vl_logic;
        d               : out    vl_logic
    );
end mux2x1_behavioral_description;
