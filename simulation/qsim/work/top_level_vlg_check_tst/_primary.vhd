library verilog;
use verilog.vl_types.all;
entity top_level_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(6 downto 0);
        HEX1            : in     vl_logic_vector(6 downto 0);
        HEX2            : in     vl_logic_vector(6 downto 0);
        HEX4            : in     vl_logic_vector(6 downto 0);
        HEX5            : in     vl_logic_vector(6 downto 0);
        HEX6            : in     vl_logic_vector(6 downto 0);
        HEX7            : in     vl_logic_vector(6 downto 0);
        HEX_DUD0        : in     vl_logic_vector(6 downto 0);
        HEX_DUD1        : in     vl_logic_vector(6 downto 0);
        LEDR            : in     vl_logic_vector(6 downto 0);
        S_DBG_OUT       : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end top_level_vlg_check_tst;
