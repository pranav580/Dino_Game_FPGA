library verilog;
use verilog.vl_types.all;
entity Huddle is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        breakGameFlag   : in     vl_logic;
        hor_reg         : in     vl_logic;
        ver_reg         : in     vl_logic;
        hudPosHorFrom   : out    vl_logic;
        hudPosHorTo     : out    vl_logic;
        hudPosVerFrom   : out    vl_logic;
        hudPosVerTo     : out    vl_logic
    );
end Huddle;
