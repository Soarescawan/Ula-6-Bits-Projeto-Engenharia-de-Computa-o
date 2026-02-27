library verilog;
use verilog.vl_types.all;
entity top_level_vlg_sample_tst is
    port(
        Seletor         : in     vl_logic_vector(3 downto 0);
        X               : in     vl_logic_vector(5 downto 0);
        Y               : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end top_level_vlg_sample_tst;
