import strformat, sequtils, strutils


const Divisors = @[999, 26, 26, 26]
const Lowercases = {'a'..'z'}.toSeq()

proc findPlate*(number: int): string =
    var k = newSeq[int](4)
    var n = number

    for i, di in Divisors.pairs():
        if n <= 0:
            break
        k[i] = n mod di
        n = n div di

    return k[1..3].map(proc(x: int): string = $(Lowercases[x])).join("") & fmt"{k[0]+1:03}"
