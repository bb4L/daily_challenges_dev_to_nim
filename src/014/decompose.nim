import math, algorithm


proc findSeq(remainder: int, existing: seq[int]): seq[int] =
    var oldResult = existing
    var nextTry = min(existing)-1

    result = @[]
    if nextTry < 1:
        return @[]

    while len(result) == 0:
        if remainder >= nextTry*nextTry:
            oldResult.add(nextTry)
            let newRemainder = remainder - (nextTry*nextTry)

            if newRemainder > 0:
                result = findSeq(newRemainder, oldResult)
            else:
                result = oldResult

            if len(result) == 0:
                oldResult.del(len(oldResult)-1)
            else:
                break
        dec(nextTry)
        if nextTry < 1:
            break

proc decompose*(square: int): seq[int] =
    result = newSeq[int]()

    let goal = pow(toFloat(square), 2)
    var startValue = square-1

    while len(result) == 0 and startValue > 2:
        result = findSeq(toInt(goal - pow(toFloat(startValue), 2)), @[startValue])
        dec(startValue)

    result.sort()
