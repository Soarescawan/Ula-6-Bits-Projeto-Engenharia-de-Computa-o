library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity incrementador is
port(
    X : in std_logic_vector(5 downto 0);
    S : out std_logic_vector(5 downto 0);
    overflow : out std_logic
);
end incrementador;

architecture arq_incrementador of incrementador is

signal c1, c2, c3, c4, c5,c6 : std_logic;

begin


S(0) <= not X(0);
c1 <= X(0);

S(1) <= X(1) xor c1;
c2 <= X(1) and c1;


S(2) <= X(2) xor c2;
c3 <= X(2) and c2;


S(3) <= X(3) xor c3;
c4 <= X(3) and c3;


S(4) <= X(4) xor c4;
c5 <= X(4) and c4;


S(5) <= X(5) xor c5;
c6 <= X(5) and c5;

overflow <= c5 xor c6;

end arq_incrementador;