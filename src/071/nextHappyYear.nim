import sequtils, tables

proc nextHappyYear*(actual_year: int): int =
    var next_year = actual_year + 1
    var digits = @[next_year div 1000, next_year div 100 mod 10,
            next_year div 10 mod 10, next_year mod 10]

    var start_point = actual_year mod 100

    if len(digits.toCountTable()) != 4:
        if digits[0] == digits[1]:
            digits[1]+=1
            start_point = 0

        for i in start_point .. 99:
            if (not digits[0..1].contains(i div 10)) and (not digits[
                    0..1].contains(i mod 10)):
                digits[2] = i div 10
                digits[3] = i mod 10
                if digits[2] != digits[3]:
                    break

    result = digits.foldl(10*a + b)
