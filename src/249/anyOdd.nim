import strutils

proc anyOdd*(data: BiggestInt): int =
    for i, c in $(toBin(data, 15)):
        if c == '1' and i mod 2 == 1:
            return 1
    return 0
