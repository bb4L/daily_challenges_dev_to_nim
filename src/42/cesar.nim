import sequtils, strutils

# const chars
const lowerLetters = toSeq('a' .. 'z').cycle(2)
const upperLetters = toSeq('A' .. 'Z').cycle(2)

proc mapping(x:char, key:int):char =
    if lowerLetters.contains(x):
        result = lowerLetters[lowerLetters.find(x)+key]
    elif upperLetters.contains(x):
        result = upperLetters[upperLetters.find(x)+key]
    else:
        result = x

proc cesar*(key:int, data:string):string =
    data.toSeq().map(proc(x:char):char = mapping(x, key)).join("")

# deciver would best work with frequency patterns depending on the language and then sort by it/by the difference