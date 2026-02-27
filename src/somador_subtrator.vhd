-- Cabeçalho ----
-- Cawan da Silveira Soares --
-- Gabriel Casali --

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somador_subtrator is
port(
    X, Y     : in  std_logic_vector(5 downto 0);
    somasub  : in  std_logic;  -- 0 = soma | 1 = subtração
    S        : out std_logic_vector(5 downto 0);
    overflow : out std_logic
);
end somador_subtrator;

architecture arq_somador of somador_subtrator is

-- sinais de carry
signal temp1, temp2, temp3, temp4, temp5, temp6 : std_logic;

-- Y modificado para complemento de 2
signal tempY : std_logic_vector(5 downto 0);

component full_adder
port(
    x, y, c_in : in std_logic;
    s, c_out   : out std_logic
);
end component;

begin

-- Bit 0
tempY(0) <= Y(0) xor somasub;
full0: full_adder
port map(
    x     => X(0),
    y     => tempY(0),
    c_in  => somasub,
    s     => S(0),
    c_out => temp1
);

-- Bit 1
tempY(1) <= Y(1) xor somasub;
full1: full_adder
port map(
    x     => X(1),
    y     => tempY(1),
    c_in  => temp1,
    s     => S(1),
    c_out => temp2
);

-- Bit 2
tempY(2) <= Y(2) xor somasub;
full2: full_adder
port map(
    x     => X(2),
    y     => tempY(2),
    c_in  => temp2,
    s     => S(2),
    c_out => temp3
);

-- Bit 3
tempY(3) <= Y(3) xor somasub;
full3: full_adder
port map(
    x     => X(3),
    y     => tempY(3),
    c_in  => temp3,
    s     => S(3),
    c_out => temp4
);

-- Bit 4
tempY(4) <= Y(4) xor somasub;
full4: full_adder
port map(
    x     => X(4),
    y     => tempY(4),
    c_in  => temp4,
    s     => S(4),
    c_out => temp5
);

-- Bit 5
tempY(5) <= Y(5) xor somasub;
full5: full_adder
port map(
    x     => X(5),
    y     => tempY(5),
    c_in  => temp5,
    s     => S(5),
    c_out => temp6
);

-- Overflow (para complemento de 2)
overflow <= temp5 xor temp6;

end arq_somador;