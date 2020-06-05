import strutils, sequtils, algorithm

proc compareWords(w1: string, w2: string): int =
    let isUpper = w1[0].isUpperAscii
    if isUpper == w2[0].isUpperAscii:
        if isUpper:
            return -cmp(w1, w2)
        else:
            return cmp(w1, w2)
    elif w1[0].isUpperAscii:
        return 1
    return -1


proc sortSentence*(sentence: string): string =
    return sorted(sentence.filter(proc(x: char): bool = x.isAlphaAscii or x in
            Whitespace).join("").split(" "), compareWords).join(" ")
