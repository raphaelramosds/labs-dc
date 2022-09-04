library verilog;
use verilog.vl_types.all;
entity properties_vlg_check_tst is
    port(
        a11             : in     vl_logic;
        a12             : in     vl_logic;
        a21             : in     vl_logic;
        a22             : in     vl_logic;
        c11             : in     vl_logic;
        c12             : in     vl_logic;
        c21             : in     vl_logic;
        c22             : in     vl_logic;
        d11             : in     vl_logic;
        d12             : in     vl_logic;
        d21             : in     vl_logic;
        d22             : in     vl_logic;
        i01             : in     vl_logic;
        i02             : in     vl_logic;
        i03             : in     vl_logic;
        m11             : in     vl_logic;
        m12             : in     vl_logic;
        m21             : in     vl_logic;
        m22             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end properties_vlg_check_tst;
