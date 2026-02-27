
-- Cawan Soares e Gabriel Casali

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparador is 
port (
    A : in std_logic_vector(5 downto 0);
    B : in std_logic_vector(5 downto 0);
    A_menor_B : out std_logic;
    A_igual_B : out std_logic
);
end comparador;

architecture arq_comparar of comparador is

component full_adder
port(
    x, y, c_in : in std_logic;
    s, c_out : out std_logic
);
end component;

signal b_neg : std_logic_vector(5 downto 0);
signal s : std_logic_vector(5 downto 0);
signal c : std_logic_vector(6 downto 0);

begin

b_neg <= not B;

c(0) <= '1';  

f1: full_adder port map (A(0), b_neg(0), c(0), s(0), c(1));
f2: full_adder port map (A(1), b_neg(1), c(1), s(1), c(2));
f3: full_adder port map (A(2), b_neg(2), c(2), s(2), c(3));
f4: full_adder port map (A(3), b_neg(3), c(3), s(3), c(4));
f5: full_adder port map (A(4), b_neg(4), c(4), s(4), c(5));
f6: full_adder port map (A(5), b_neg(5), c(5), s(5), c(6));


A_menor_B <= not c(6);


A_igual_B <= '1' when s = "000000" else '0';

end arq_comparar;