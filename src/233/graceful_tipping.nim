import math

proc gracefulTipping*(restBill: float): float =
    result = ceil(restBill*1.15)

    if result < 10:
        return result

    let exp = floor(log10(result))-1

    let modOp = 5 * pow(10.0, exp)

    if floorMod(result, modOp) > 0:
        result += (modOp - floorMod(result, modOp))
