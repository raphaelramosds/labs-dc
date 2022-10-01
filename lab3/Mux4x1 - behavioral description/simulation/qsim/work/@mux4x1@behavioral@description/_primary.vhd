library verilog;
use verilog.vl_types.all;
entity Mux4x1BehavioralDescription is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        s0_in           : in     vl_logic;
        s1_in           : in     vl_logic;
        S               : out    vl_logic
    );
end Mux4x1BehavioralDescription;
