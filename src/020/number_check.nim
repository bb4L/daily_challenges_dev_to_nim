import math

proc numberCheck*(data: int): seq[bool] =
    result = @[false, false, false]

    if data mod 10 == 0:
        result = @[false, true, true]

    elif data mod 2 == 0:
        result[2] = true
        result[1] = data == 2
    else:
        if data > 0:
            result[0] = true
            for i in 3 .. toInt(floor(sqrt(toFloat(data)))):
                if data mod i == 0:
                    result[0] = false
                    break
