library verilog;
use verilog.vl_types.all;
entity Score is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        BreakFlag       : in     vl_logic;
        scoreHorFrom    : out    vl_logic;
        scoreHorTo      : out    vl_logic;
        scoreVerFrom    : out    vl_logic;
        scoreVerTo      : out    vl_logic
    );
end Score;
