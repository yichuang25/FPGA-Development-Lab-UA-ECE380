LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY adder4c IS

PORT ( a, b: IN STD_LOGIC_VECTOR (3 DOWNTO 0);

cin: IN STD_LOGIC;

s: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);

cout: OUT STD_LOGIC);

END adder4c;

ARCHITECTURE LogicFunc OF adder4c IS

SIGNAL c: STD_LOGIC_VECTOR (4 DOWNTO 0);

SIGNAL p: STD_LOGIC_VECTOR (3 DOWNTO 0);

SIGNAL g: STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN

G1: FOR i IN 0 TO 3 GENERATE

p(i) <= a(i) XOR b(i);

g(i) <= a(i) AND b(i);

s(i) <= p(i) XOR c(i);

END GENERATE;

c(0) <= cin;

c(1) <= (cin AND p(0)) OR g(0);

c(2) <= (cin AND p(0) AND p(1)) OR (g(0) AND p(1)) OR g(1);

c(3) <= (cin AND p(0) AND p(1) AND p(2)) OR (g(0) AND p(1) AND p(2)) OR (g(1) AND p(2)) OR g(2);

c(4) <= (cin AND p(0) AND p(1) AND p(2) AND p(3)) OR (g(0) AND p(1) AND p(2) AND p(3)) OR (g(1) AND p(2) AND p(3)) OR (g(2) AND p(3)) OR g(3);

cout <= c(4);

END LogicFunc;