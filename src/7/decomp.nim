import math, tables, strutils

proc decomp*(val:int):string =
    let results = newTable[int, int]()

    for number in countup(2,val):
        var remainder = 0
        var val_to_test = number
        for p in countup(2,number):
            remainder = floorMod(val_to_test,p)
            if remainder == 0:
                while remainder==0 and val_to_test>1:
                    results[p] = results.getOrDefault(p,0) + 1
                    val_to_test = val_to_test div p
                    remainder = floorMod(val_to_test,p)

    var res_data = newSeq[string]()

    for k, v in results.pairs:
        if v > 1:
            res_data.add($(k) & "^" & $(v))
        else:
            res_data.add($(k))

    result = res_data.join(" * ")