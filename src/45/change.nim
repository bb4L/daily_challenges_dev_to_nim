import tables

const COINS = @[25, 10, 5]

proc change*(value:int):OrderedTable[int,int] =
    var change_left = value
    for c in COINS:
        let val = change_left div c
        result.add(c,val)
        change_left -= val * c

    result.add(1, change_left)