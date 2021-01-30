Entity designA IS
		Port (a, b, c	: IN BIT;
					f			: OUT BIT);
END designA;

ARCHITECTURE Behavior OF designA IS
BEGIN
	f <= (a OR b OR (not c)) AND (a or (not b) or c) AND ((not a) OR b or c) AND ((not a) or (Not b) Or (Not c));
END Behavior;