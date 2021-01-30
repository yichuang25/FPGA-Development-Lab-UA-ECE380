LIBRARY ieee;
USE ieee.std_logic_1164.all ;
ENTITY substractor IS
PORT ( Cin, x, y : IN STD_LOGIC ;
s, Cout, Over: OUT STD_LOGIC ) ;
END substractor ;
ARCHITECTURE LogicFunc OF substractor IS
BEGIN
s <= x XOR (Not y) XOR Cin;
Cout<= (x AND (Not y)) OR (Cin AND x) OR (Cin AND (Not y)) ;
Over<= Cin xor Cout;
END LogicFunc;