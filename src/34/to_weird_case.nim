import sequtils, strutils

proc change_word(word: string): string =
    var i = 0
    for c in word:
        if i mod 2 == 0:
            result.add(c.toUpperAscii())
        else:
            result.add(c.toLowerAscii())
        inc(i)

proc to_weird_case*(data: string): string =
    result = data.split(" ").map(change_word).join(" ")
