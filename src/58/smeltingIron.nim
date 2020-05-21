import tables

const resources = {800: "Lava", 120: "Blaze rod", 80: "Coals",
        15: "Block of Wood"}.toOrderedTable()

proc smeltingIron*(amount: int): OrderedTable[string, int] =
    var total_time = 11 * amount

    for k, v in resources.pairs:
        var count = 0

        if total_time > k:
            count = total_time div k
            total_time -= count * k

        result.add(v, count)

    result.add("Sticks", total_time)
