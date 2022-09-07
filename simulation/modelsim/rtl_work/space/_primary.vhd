library verilog;
use verilog.vl_types.all;
entity space is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        KBclk           : in     vl_logic;
        KBin            : in     vl_logic;
        flag            : out    vl_logic
    );
end space;
