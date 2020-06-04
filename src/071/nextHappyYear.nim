import sequtils, tables

proc nextHappyYear*(actualYear: int): int =
    var nextYear = actualYear + 1
    var digits = @[nextYear div 1000, nextYear div 100 mod 10,
            nextYear div 10 mod 10, nextYear mod 10]

    var startPoint = actualYear mod 100

    if len(digits.toCountTable()) != 4:
        if digits[0] == digits[1]:
            digits[1]+=1
            startPoint = 0

        for i in startPoint .. 99:
            if (not digits[0..1].contains(i div 10)) and (not digits[
                    0..1].contains(i mod 10)):
                digits[2] = i div 10
                digits[3] = i mod 10
                if digits[2] != digits[3]:
                    break

    result = digits.foldl(10*a + b)
