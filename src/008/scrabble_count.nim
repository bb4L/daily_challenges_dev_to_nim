import tables, strutils, math

const ValueForChar = {
    'a': 1, 'b': 3, 'c': 3, 'd': 2, 'e': 1, 'f': 4, 'g': 2, 'h': 4, 'i': 1,
    'j': 8, 'k': 5, 'l': 1, 'm': 3, 'n': 1, 'o': 1, 'p': 3, 'q': 10, 'r': 1,
    's': 1, 't': 1, 'u': 1, 'v': 4, 'w': 4, 'x': 8, 'y': 4, 'z': 10
}.toTable

proc scrabbleCount*(word: string): int =
    var wordProcessed = word.toLower()
    var wordMultiplier = 1

    let splitted = wordProcessed.split("(")

    if len(splitted) > 1:
        wordMultiplier = toInt(pow(2, toFloat(splitted[1].count("d"))) * pow(3,
                toFloat(splitted[1].count("t"))))

    result = 0

    var asterixCount = 0
    var lastValue = 0
    var multiValue = 0

    for c in splitted[0]:
        if c == '*':
            result += lastValue
            multiValue += lastValue
            asterixCount+=1
        elif c == '^':
            result -= multiValue
            lastValue = 0
        else:
            asterixCount = 0
            lastValue = ValueForChar.getOrDefault(c, 0)
            multiValue = lastValue
            result += lastValue

    let finalWordProcessed = wordProcessed.multiReplace(("*", ""), ("^", ""))

    result *= wordMultiplier

    if len(finalWordProcessed) == 7:
        result += 50
