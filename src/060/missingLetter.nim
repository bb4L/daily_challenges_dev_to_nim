import sequtils, strutils

const LETTERS = Letters.toSeq()

proc missingLetter*(chars: seq[char]): char =
    var lastC = chars[0]

    for c in chars[1..len(chars)-1]:
        if find(LETTERS, lastC) + 1 == find(LETTERS, c):
            lastC = c
            continue
        else:
            return LETTERS[find(LETTERS, lastC) + 1]
