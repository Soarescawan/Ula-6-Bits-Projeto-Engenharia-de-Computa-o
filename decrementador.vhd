
-- Cawan Soares e Gabriel Casali


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decrementador is
port(
    X : in std_logic_vector(5 downto 0);
    S : out std_logic_vector(5 downto 0);
    overflow : out std_logic
);
end decrementador;

architecture arq_decrementador of decrementador is

signal b1, b2, b3, b4, b5, b6 : std_logic;

begin


S(0) <= not X(0);
b1 <= not X(0);


S(1) <= X(1) xor b1;
b2 <= (not X(1)) and b1;


S(2) <= X(2) xor b2;
b3 <= (not X(2)) and b2;


S(3) <= X(3) xor b3;
b4 <= (not X(3)) and b3;


S(4) <= X(4) xor b4;
b5 <= (not X(4)) and b4;


S(5) <= X(5) xor b5;
b6 <= (not X(5)) and b5;

overflow <= b5 xor b6;

end arq_decrementador;