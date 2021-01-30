ENTITY vhdlfunctions IS
	PORT (w1,w2,w3,w4 : IN BIT;
			g, h			: OUT BIT);
END vhdlfunctions;

ARCHITECTURE LOgicFunc OF vhdlfunctions IS
BEGIN
	g<=(w1 AND w2)OR(w3 AND w4);
	h<=(w1 AND w3)OR(w2 AND w4);
END LogicFunc;
