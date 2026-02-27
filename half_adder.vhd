-- Cabeçalho ----
-- Cawan da Silveira Soares --
-- Gabriel Casali --


Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
port(
a, b : in std_logic;
sum, carry : out std_logic
);
end half_adder;
architecture arch_half_adder of half_adder is
begin
sum <= a xor b;
carry <= a and b;
end arch_half_adder;