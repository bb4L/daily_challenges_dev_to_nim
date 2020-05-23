import sequtils, strutils

proc shift_matrix*(m: seq[seq[char]], n: int): seq[seq[char]] =
    let row_len = m[0].len()
    var flatten = newSeq[char]()

    for s in m:
        flatten = concat(flatten, s)

    let tot_len = len(flatten)
    let shift_by = n mod tot_len

    var rotated = flatten.map(proc(x: char): string = $(x)).join("").repeat(
            2).substr(tot_len-shift_by, 2*tot_len-shift_by).toSeq()

    for i in 0 .. (tot_len div row_len-1):
        result.add(rotated[0 .. row_len-1])
        rotated.delete(0, row_len-1)
