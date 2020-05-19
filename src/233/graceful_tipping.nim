import math

proc gracefulTipping*(rest_bill: float): float =
    result = ceil(rest_bill*1.15)

    if result < 10:
        return result

    let exp = floor(log10(result))-1

    let mod_op = 5 * pow(10.0, exp)

    if floorMod(result, mod_op) > 0:
        result += (mod_op - floorMod(result, mod_op))
