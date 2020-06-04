import math, tables, strutils

proc decomp*(val: int): string =
    let results = newTable[int, int]()

    for number in countup(2, val):
        var remainder = 0
        var valToTest = number
        for p in countup(2, number):
            remainder = floorMod(valToTest, p)
            if remainder == 0:
                while remainder == 0 and valToTest > 1:
                    results[p] = results.getOrDefault(p, 0) + 1
                    valToTest = valToTest div p
                    remainder = floorMod(valToTest, p)

    var resData = newSeq[string]()

    for k, v in results.pairs:
        if v > 1:
            resData.add($(k) & "^" & $(v))
        else:
            resData.add($(k))

    result = resData.join(" * ")
