import sequtils, strutils

const VOWELS = @['a', 'e', 'i', 'o', 'u']
const IDXS = @['1', '2', '3', '4', '5']

proc encode*(data: string): string =
    data.map(proc(c: char): char =
        result = c
        if VOWELS.find(c) > -1:
            result = IDXS[VOWELS.find(c)]
    ).join("")

proc decode*(data: string): string =
    data.map(proc(c: char): char =
        result = c
        if IDXS.find(c) > -1:
            result = VOWELS[IDXS.find(c)]
    ).join("")
