import strutils

proc digitalRoot*(num: int): int =
    var number = num
    var sum = 11

    while sum > 10:
        sum = 0
        for k in $(number):
            sum += parseInt($(k))
        number = sum

    return sum
