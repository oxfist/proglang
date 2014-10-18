fun fib (n : int) =
    if n = 1 orelse n = 2 then
	n
    else
	fib(n-1) + fib(n-2)

fun sum (n : int, lim : int) =
    if fib(n) <= lim then
	if fib(n) mod 2 = 0 then
	    fib(n) + sum(n+1, lim)
	else
	    sum(n+1, lim)
    else
	0

val n = 4000000
val res = sum(1, n)
