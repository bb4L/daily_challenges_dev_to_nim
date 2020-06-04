import strutils

proc evenOrOdd*(vals: string): string =
    var evenSum = 0
    var oddSum = 0

    for c in vals:
        let n = ($(c)).parseInt()
        if n mod 2 == 0:
            evenSum += n
        else:
            oddSum += n

    let sumEvenOdd = evenSum - oddSum

    if sumEvenOdd > 0:
        result = "Even is greater than Odd"
    elif sumEvenOdd == 0:
        result = "Even and Odd are the same"
    else:
        result = "Odd is greater than Even"
