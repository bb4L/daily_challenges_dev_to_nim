import sets

proc solve*(numbers: seq[int]): int =
    var knownNumber = initHashSet[int]()

    for val in numbers:
        var newValues = initHashSet[int]()
        newValues.incl(val)

        for k in knownNumber.items():
            newValues.incl(k+val)

        knownNumber.incl(newValues)

    var k = 1
    while true:
        if knownNumber.contains(k):
            inc(k)
        else:
            return k
