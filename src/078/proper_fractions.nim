import math, sequtils

# references:
# https://en.wikipedia.org/wiki/Euler%27s_totient_function#Computing_Euler's_totient_function
# https://www.geeksforgeeks.org/print-all-prime-factors-of-a-given-number/

proc getPrimeFactors(val: int): seq[float] =
    var n = val
    if n mod 2 == 0:
        result.add(2)

    while n mod 2 == 0:
        n = n div 2

    for i in countup(3, sqrt(n.toFloat()).toInt()+1, 2):
        if n mod i == 0:
            result.add(i.toFloat())

            while n mod i == 0:
                n = n div i

    if n > 2:
        result.add(n.toFloat())


proc properFractions*(n: int): int =
    let primefactors = getPrimeFactors(n)

    if len(primefactors) > 0:
        result = (n.toFloat() * primefactors.map(proc(x: float): float = (1 - (
            1/x))).foldl(a * b)).toInt()
    else:
        result = 0
