library verilog;
use verilog.vl_types.all;
entity Dino is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        breakGameFlag   : in     vl_logic;
        SpaceFlag       : in     vl_logic;
        hor_reg         : in     vl_logic;
        ver_reg         : in     vl_logic;
        DinoPosHorFrom  : out    vl_logic_vector(11 downto 0);
        DinoPosHorTo    : out    vl_logic_vector(11 downto 0);
        DinoPosVerFrom  : out    vl_logic_vector(11 downto 0);
        DinoPosVerTo    : out    vl_logic_vector(11 downto 0);
        q               : out    vl_logic
    );
end Dino;
