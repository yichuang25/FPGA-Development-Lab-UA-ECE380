LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
ENTITY designA IS
PORT( Cin : IN STD_LOGIC;
X,Y : IN SIGNED(3 DOWNTO 0);
S : OUT SIGNED(3 DOWNTO 0);
Cout, Over: OUT STD_LOGIC);
END designA;
ARCHITECTURE Behavior OF designA IS
SIGNAL Sum,sum1,sum2 : SIGNED(4 DOWNTO 0);
BEGIN
sum1 <= ('0'& X);
sum2 <= ('0' & Y);
Sum <= sum1 + sum2 + Cin;
S <= Sum(3 DOWNTO 0);
Cout <= Sum(4);
Over <= Sum(4) XOR (X(3) XOR (Y(3) XOR Sum(3))); -- overflow
END Behavior;