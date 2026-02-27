-- Cawan Soares e Gabriel Casali

Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity top_level is
    Port(
        X, Y  : in  std_logic_vector(5 downto 0);
		  Seletor : in std_logic_vector(3 downto 0);
        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
		  HEX3 : out std_logic_vector(6 downto 0);
        HEX4 : out std_logic_vector(6 downto 0);
        HEX5 : out std_logic_vector(6 downto 0);
        HEX6 : out std_logic_vector(6 downto 0);
		  HEX7 : out std_logic_vector(6 downto 0);
		  HEX_DUD0, HEX_DUD1 : out std_logic_vector(6 downto 0);
        LEDR : out std_logic_vector(6 downto 0);
		  LEDR_desligado : out std_logic_vector(10 downto 0);
		  LEDG_desligado : out std_logic_vector(8 downto 0);
		  S_DBG_OUT: out std_logic_vector(5 downto 0)
);
end top_level;

architecture estrutural of top_level is

component Ula_6bits
Port(
A, B     : in  std_logic_vector(5 downto 0);
sel_op   : in  std_logic_vector(3 downto 0);
S        : out std_logic_vector(5 downto 0);
overflow : out std_logic;
negativoA: out std_logic;
negativoB: out std_logic;
        negativo: out std_logic;
        zero     : out std_logic;
        A_igual_B: out std_logic;
        A_menor_B: out std_logic
    );
end component;

component decodificador
    Port(
        x : in std_logic_vector(5 downto 0);
        display7_2 : out std_logic_vector(6 downto 0);
        display7_1 : out std_logic_vector(6 downto 0);
        display7_0 : out std_logic_vector(6 downto 0)
    );
end component;

signal A, B, S : std_logic_vector(5 downto 0);
signal sel : std_logic_vector(3 downto 0);
signal overflow_s, negativo_a, negativo_b, negativo, zero_s : std_logic;
signal igual_s, menor_s : std_logic;
signal temp_HEX2, temp_HEX1, temp_HEX0 : std_logic_vector(6 downto 0);

begin

-- Liga chaves
A <= X;
B <= Y;
sel <= Seletor;

-- ULA
ula1: Ula_6bits
port map(
    A, B, sel, S,
    overflow_s,
	 negativo_a,
	 negativo_b,
    negativo,
    zero_s,
    igual_s,
    menor_s
);
--Mostra entrada A

dec_B: decodificador
port map(
    B,
    HEX_DUD0,
    HEX5,
    HEX4
);
--Mostra entrada B
dec_A: decodificador
port map(
    A,
    HEX_DUD1,
    HEX7,
    HEX6
);

-- Mostra resultado nos displays
dec_saida: decodificador
port map(
    S,
    temp_HEX2,
    temp_HEX1,
    temp_HEX0
);
--Display 7 segmentos, overflow 
	with overflow_s select
 
		HEX3 <= 
		"1111111" when '0',
		"0000110" when others;
	with overflow_s select
	
		HEX2 <=
		temp_HEX2 when '0',
		"0101111" when others;
	
	with overflow_s select
	
		HEX1 <=
		temp_HEX1 when '0',
		"0101111" when others;
	
	with overflow_s select
		HEX0 <=
		temp_HEX0 when '0',
		"1000000" when others;
	
-- LEDs para flags
LEDR(0) <= overflow_s;
LEDR(1) <= negativo;
LEDR(2) <= zero_s;
LEDR(3) <= igual_s;
LEDR(4) <= menor_s; 
LEDR(5) <= negativo_b; -- pinado no led R14
LEDR(6) <= negativo_a; -- pinado no led R17

S_DBG_OUT <= S;
LEDR_desligado <= "00000000000";
LEDG_desligado <= "000000000";

end estrutural;