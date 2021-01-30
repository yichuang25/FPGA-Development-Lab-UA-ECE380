LIBRARY ieee;
USE ieee.std_logic_1164.all ;
ENTITY designA IS
PORT ( Cin: IN STD_LOGIC ;
x3, x2, x1, x0 : IN STD_LOGIC ;
y3, y2, y1, y0: IN STD_LOGIC ;
s3, s2, s1, s0 : OUT STD_LOGIC ;
Cout, Over: OUT STD_LOGIC ) ;
END designA ;
ARCHITECTURE Structure OF designA IS
SIGNAL c1, c2, c3 : STD_LOGIC ;
COMPONENT fulladd
PORT ( Cin, x, y: IN STD_LOGIC ;
s, Cout: OUT STD_LOGIC ) ;
END COMPONENT ;
BEGIN
stage0: fulladd PORT MAP ( Cin, x0, not y0, s0, c1 ) ;
stage1: fulladd PORT MAP ( c1, x1, not y1, s1, c2 ) ;
stage2: fulladd PORT MAP ( c2, x2, not y2, s2, c3 ) ;
stage3: fulladd PORT MAP (Cin=> c3, Cout=> Cout, x => x3, y => not y3, s => s3 ) ;
Over <= ((x3 AND y3) OR (C3 AND x3) OR (C3 AND y3)) XOR C3;
END Structure ;