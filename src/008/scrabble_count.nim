import tables, strutils, math

const VALUE_FOR_CHAR = {
    'a': 1, 'b': 3, 'c': 3, 'd': 2, 'e': 1, 'f': 4, 'g': 2, 'h': 4, 'i': 1,
    'j': 8, 'k': 5, 'l': 1, 'm': 3, 'n': 1, 'o': 1, 'p': 3, 'q': 10, 'r': 1,
    's': 1, 't': 1, 'u': 1, 'v': 4, 'w': 4, 'x': 8, 'y': 4, 'z': 10
}.toTable

proc scrabble_count*(word: string): int =
    var word_processed = word.toLower()
    var word_multiplier = 1

    let splitted = word_processed.split("(")

    if len(splitted) > 1:
        word_multiplier = toInt(pow(2, toFloat(splitted[1].count("d"))) * pow(3,
                toFloat(splitted[1].count("t"))))

    result = 0

    var asterix_count = 0
    var last_value = 0
    var multi_value = 0

    for c in splitted[0]:
        if c == '*':
            result += last_value
            multi_value += last_value
            asterix_count+=1
        elif c == '^':
            result -= multi_value
            last_value = 0
        else:
            asterix_count = 0
            last_value = VALUE_FOR_CHAR.getOrDefault(c, 0)
            multi_value = last_value
            result += last_value

    let final_word_processed = word_processed.multiReplace(("*", ""), ("^", ""))

    result *= word_multiplier

    if len(final_word_processed) == 7:
        result += 50
