fun pow(x : int, y : int) =
    if y = 0
    then 1
    else x * pow(x, y - 1)

val x = 2
val y = 8
val res = pow(x, y)
