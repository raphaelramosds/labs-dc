library verilog;
use verilog.vl_types.all;
entity ones_counter is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        S1              : out    vl_logic;
        S2              : out    vl_logic
    );
end ones_counter;
