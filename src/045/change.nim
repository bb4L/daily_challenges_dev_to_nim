import tables

const COINS = @[25, 10, 5]

proc change*(value: int): OrderedTable[int, int] =
    var changeLeft = value
    for c in COINS:
        let val = changeLeft div c
        result.add(c, val)
        changeLeft -= val * c

    result.add(1, changeLeft)
