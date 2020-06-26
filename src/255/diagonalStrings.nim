import sequtils, strutils, algorithm

proc diagonalStrings*(data: seq[string]): seq[string] =
    let
        n = len(data)
        initData = ' '.repeat(n)
        updatedData = data.map(proc (x: string): string = x.toLower()).sorted

    result = newSeq[string](len(data)).map(proc(x: string): string = $(initData))

    for i in countup(0, n-1):
        for k in countup(0, n-1):
            result[i][k] = updatedData[(i+k) mod (n)][k]
