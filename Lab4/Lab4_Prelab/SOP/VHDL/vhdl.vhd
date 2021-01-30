ENTITY vhdl IS
	PORT (A, B, C, D : IN BIT;
			f			  : OUT BIT);
END vhdl;

ARCHITECTURE behavior of vhdl IS
BEGIN 
 f<= ((Not B) and (Not D)) OR ((Not B) AND C) OR ( A and C And D);
END behavior;
 