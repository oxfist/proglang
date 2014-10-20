fun is_older (date1 : (int * int * int), date2 : (int * int * int)) =
    if #1 date1 < #1 date2 orelse
       (#2 date1 < #2 date2 orelse #3 date1 < #3 date2) then
	true
    else false

fun number_in_month (dates : (int * int * int) list, month : int) =
    if null dates then
	0
    else
	if (#2 (hd dates)) = month then
	    1 + number_in_month(tl dates, month)
	else
	    number_in_month(tl dates, month)
	
fun number_in_months (dates : (int * int * int) list, months : int list) =
    if null months then
	0
    else
	number_in_month(dates, hd months) + number_in_months(dates, tl months)

fun dates_in_month (dates : (int * int * int) list, month : int) =
    if null dates then
	[]
    else
	if #2 (hd dates) = month then
	    hd dates :: dates_in_month(tl dates, month)
	else
	    dates_in_month(tl dates, month)

fun dates_in_months (dates : (int * int * int) list, months : int list) =
    if null months then
	[]
    else
	dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)

fun get_nth (strings : string list, n : int) =
    if n = 1 then
	hd strings
    else
	get_nth(tl strings, n-1)

val test4 = dates_in_month([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]
val test5 = dates_in_month([(2012,2,28),(2013,2,1)],2) = [(2012,2,28), (2013,2,1)]
val test6 = dates_in_month([(2012,2,28),(2013,2,1)],3) = []
val test7 = dates_in_month([],3) = []

val test8 = dates_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]
val test9 = dates_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[]) = []
val test10 = dates_in_months([],[]) = []
val test11 = dates_in_months([],[2, 3, 4]) = []
val test12 = get_nth(["hi", "there", "how", "are", "you"], 2) = "there"
val test13 = get_nth(["hi", "there", "how", "are", "you"], 6) = "there"
