import sequtils, strutils

const LETTERS = Letters.toSeq()

proc missingLetter*(chars: seq[char]): char =
    var last_c = chars[0]

    for c in chars[1..len(chars)-1]:
        if find(LETTERS, last_c) + 1 == find(LETTERS, c):
            last_c = c
            continue
        else:
            return LETTERS[find(LETTERS, last_c) + 1]
