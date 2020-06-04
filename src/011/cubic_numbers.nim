import strutils, sequtils, math

proc isCubic*(value: int): bool =
    if value > 999:
        return false

    var sumOfNumbers = 0.0
    for c in $(value):
        sumOfNumbers += pow(parseFloat($(c)), 3)
    result = toInt(sumOfNumbers) == value

proc findNumbers(data: string): seq[int] =
    var currInts = newSeq[string]()

    for c in data:
        if c.isDigit():
            currInts.add($(c))
            result.add(parseInt($(c)))
            if len(currInts) == 3:
                result.add(parseInt(currInts[0] & currInts[1] & currInts[2]))
                currInts.delete(0)
            elif len(currInts) == 2:
                result.add(parseInt(currInts[0] & currInts[1]))
        else:
            currInts = @[]

    result = deduplicate(result)

proc findCubics*(data: string): string =
    let numbers = findNumbers(data)
    let cubicNumbers = numbers.filter(isCubic)

    if len(cubicNumbers) > 0:
        result = cubicNumbers.join(" ")
    else:
        result = "Unlucky"


