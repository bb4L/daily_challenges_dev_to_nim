import tables

const resources = {800: "Lava", 120: "Blaze rod", 80: "Coals",
        15: "Block of Wood"}.toOrderedTable()

proc smeltingIron*(amount: int): OrderedTable[string, int] =
    var totalTime = 11 * amount

    for k, v in resources.pairs:
        var count = 0

        if totalTime > k:
            count = totalTime div k
            totalTime -= count * k

        result.add(v, count)

    result.add("Sticks", totalTime)
