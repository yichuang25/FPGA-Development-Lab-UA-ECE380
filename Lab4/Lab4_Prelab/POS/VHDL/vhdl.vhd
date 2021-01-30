ENTITY vhdl IS
	PORT (A, B, C, D	: IN BIT;
			f				: OUT BIT);
END vhdl;

ARCHITECTURE Behavior OF vhdl IS
Begin 
	f <= (A OR (Not B)) AND (C OR (Not D)) AND ((Not A) OR (NOt B) OR D);
END Behavior;