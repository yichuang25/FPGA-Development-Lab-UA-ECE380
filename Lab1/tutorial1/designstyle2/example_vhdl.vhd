ENTITY example_vhdl IS
	PORT ( x1, x2, x3 : IN BIT;
				f			: OUT BIT);
END example_vhdl;

ARCHITECTURE Behavior OF example_vhdl IS
BEGIN
	f <= (x1 AND x2) OR (NOT x2 AND x3);
END Behavior;