library verilog;
use verilog.vl_types.all;
entity Main is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        VGA_RED         : out    vl_logic;
        VGA_GREEN       : out    vl_logic;
        VGA_BLUE        : out    vl_logic;
        VGA_HS          : out    vl_logic;
        VGA_VS          : out    vl_logic;
        KBclk           : in     vl_logic;
        KBin            : in     vl_logic;
        q               : out    vl_logic_vector(0 downto 0)
    );
end Main;
