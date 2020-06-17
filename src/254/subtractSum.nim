import tables, strutils, sequtils

proc subtractSum*(data: int): string =
    var lookupTable = newTable[int, string]()
    for n in lines("254/lookup.txt"):
        let splitted = n.split("-")

        lookupTable.add(parseInt(splitted[0]), splitted[1])

    var num = data

    while not lookupTable.contains(num):
        let k = ($(num)).toSeq().map(proc (x: char): int = parseInt($(
                x))).foldl(a+b)
        num -= k
    return lookupTable.getOrDefault(num)
