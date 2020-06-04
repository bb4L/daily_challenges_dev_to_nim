import strutils

proc checkOccurences(num: int, occurences: int): seq[int] =
    var digits = $(num)
    var lastDigit = ' '
    var count = 0

    for d in digits:
        if d == lastDigit:
            count += 1
            if count == occurences:
                count = 0
                lastDigit = ' '
                result.add(parseInt($(d)))
        else:
            lastDigit = d
            count = 1


proc tripledouble*(num1: int, num2: int): int =
    let occurences1 = checkOccurences(num1, 3)
    let occurences2 = checkOccurences(num2, 2)

    for k in occurences1:
        if k in occurences2:
            return 1
    result = 0
