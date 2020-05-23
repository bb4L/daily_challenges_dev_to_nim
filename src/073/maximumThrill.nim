import sequtils

type
    ATM = tuple
        value: int
        pos: int

proc maximumThrill*(atms: seq[int]): int =
    result = 0
    let size = len(atms)
    for idx1, i in atms.pairs:
        for idx2, k in atms[idx1 .. size-1].pairs:
            result = max(result, i+k+abs(idx2))
