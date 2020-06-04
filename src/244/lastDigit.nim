proc lastDigit*(a: int, b: int): int =
    var lastDigits = @[1]

    var actNum = a
    var count = 0

    while (not lastDigits.contains(actNum mod 10)) or count == b:
        lastDigits.add(actNum mod 10)

        actNum *= a
        inc(count)

    if count == b:
        lastDigits[len(lastDigits)-1]
    else:
        lastDigits[b mod (len(lastDigits))]
