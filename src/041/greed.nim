import tables

const triplets = {1: 1000, 6: 600, 5: 500, 4: 400, 3: 300, 2: 200}.toTable()
const singles = {1: 100, 5: 50, }.toTable()

proc greed*(dices: seq[int]): int =
    var counts = dices.toCountTable()

    for k, v in counts.pairs():
        let v3 = v div 3

        if v3 > 0:
            result += v3 * triplets.getOrDefault(k, 0)

        if k in singles:
            result += (v - 3 * v3) * singles.getOrDefault(k, 0)
