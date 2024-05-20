library verilog;
use verilog.vl_types.all;
entity Hackathon is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        red_MR1         : out    vl_logic;
        yellow_MR1      : out    vl_logic;
        green_MR1       : out    vl_logic;
        red_MR2         : out    vl_logic;
        yellow_MR2      : out    vl_logic;
        green_MR2       : out    vl_logic;
        red_MR3         : out    vl_logic;
        yellow_MR3      : out    vl_logic;
        green_MR3       : out    vl_logic
    );
end Hackathon;
