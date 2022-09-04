library verilog;
use verilog.vl_types.all;
entity properties is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        i01             : out    vl_logic;
        i02             : out    vl_logic;
        i03             : out    vl_logic;
        c11             : out    vl_logic;
        c12             : out    vl_logic;
        c21             : out    vl_logic;
        c22             : out    vl_logic;
        a11             : out    vl_logic;
        a12             : out    vl_logic;
        a21             : out    vl_logic;
        a22             : out    vl_logic;
        d11             : out    vl_logic;
        d12             : out    vl_logic;
        d21             : out    vl_logic;
        d22             : out    vl_logic;
        m11             : out    vl_logic;
        m12             : out    vl_logic;
        m21             : out    vl_logic;
        m22             : out    vl_logic
    );
end properties;
