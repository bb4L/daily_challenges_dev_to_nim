import sequtils, strutils

proc changeWord(word: string): string =
    var i = 0
    for c in word:
        if i mod 2 == 0:
            result.add(c.toUpperAscii())
        else:
            result.add(c.toLowerAscii())
        inc(i)

proc toWeirdCase*(data: string): string =
    result = data.split(" ").map(changeWord).join(" ")
