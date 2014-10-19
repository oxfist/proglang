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

val test1 = is_older((1,2,3),(2,3,4)) = true
val test2 = number_in_month([(2012,2,28),(2013,12,1)],2) = 1
val test3 = number_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3
