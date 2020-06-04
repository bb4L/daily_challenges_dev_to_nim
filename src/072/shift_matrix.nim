import sequtils, strutils

proc shiftMatrix*(m: seq[seq[char]], n: int): seq[seq[char]] =
    let rowLen = m[0].len()
    var flatten = newSeq[char]()

    for s in m:
        flatten = concat(flatten, s)

    let totLen = len(flatten)
    let shiftBy = n mod totLen

    var rotated = flatten.map(proc(x: char): string = $(x)).join("").repeat(
            2).substr(totLen-shiftBy, 2*totLen-shiftBy).toSeq()

    for i in 0 .. (totLen div rowLen-1):
        result.add(rotated[0 .. rowLen-1])
        rotated.delete(0, rowLen-1)
