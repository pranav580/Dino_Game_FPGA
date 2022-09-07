library verilog;
use verilog.vl_types.all;
entity ControlUnit is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        hor_reg         : in     vl_logic;
        ver_reg         : in     vl_logic;
        DinoPosHorFrom  : out    vl_logic_vector(11 downto 0);
        DinoPosHorTo    : out    vl_logic_vector(11 downto 0);
        DinoPosVerFrom  : out    vl_logic_vector(11 downto 0);
        DinoPosVerTo    : out    vl_logic_vector(11 downto 0);
        hudPosHorFrom   : out    vl_logic_vector(11 downto 0);
        hudPosHorTo     : out    vl_logic_vector(11 downto 0);
        hudPosVerFrom   : out    vl_logic_vector(11 downto 0);
        hudPosVerTo     : out    vl_logic_vector(11 downto 0);
        scoreHorFrom    : out    vl_logic_vector(11 downto 0);
        scoreHorTo      : out    vl_logic_vector(11 downto 0);
        scoreVerFrom    : out    vl_logic_vector(11 downto 0);
        scoreVerTo      : out    vl_logic_vector(11 downto 0);
        KBclk           : in     vl_logic;
        KBin            : in     vl_logic;
        q               : out    vl_logic
    );
end ControlUnit;
