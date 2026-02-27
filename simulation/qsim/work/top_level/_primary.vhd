library verilog;
use verilog.vl_types.all;
entity top_level is
    port(
        X               : in     vl_logic_vector(5 downto 0);
        Y               : in     vl_logic_vector(5 downto 0);
        Seletor         : in     vl_logic_vector(3 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0);
        HEX_DUD0        : out    vl_logic_vector(6 downto 0);
        HEX_DUD1        : out    vl_logic_vector(6 downto 0);
        LEDR            : out    vl_logic_vector(6 downto 0);
        S_DBG_OUT       : out    vl_logic_vector(5 downto 0)
    );
end top_level;
