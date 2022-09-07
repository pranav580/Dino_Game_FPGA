library verilog;
use verilog.vl_types.all;
entity DinoData is
    port(
        address         : in     vl_logic_vector(11 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(0 downto 0)
    );
end DinoData;
