fun eul1 (n : int) =
    if n = 3 then
	3
    else
	if n mod 3 = 0 orelse n mod 5 = 0 then
	    n + eul1(n-1)
	else
	    eul1(n-1)

val n = 999
val res = eul1 n
