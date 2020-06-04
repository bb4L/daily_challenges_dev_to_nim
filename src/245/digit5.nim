import strutils

proc digit5*(digits: string): int =
    let k = len(digits) - 5
    result = 0

    for i in countup(0, k):
        result = max(result, parseInt(digits.substr(i, i+4)))
