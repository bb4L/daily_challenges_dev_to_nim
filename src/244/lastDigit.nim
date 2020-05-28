proc lastDigit*(a: int, b: int): int =
    var last_digits = @[1]

    var act_num = a
    var count = 0

    while (not last_digits.contains(act_num mod 10)) or count == b:
        last_digits.add(act_num mod 10)

        act_num *= a
        inc(count)

    if count == b:
        last_digits[len(last_digits)-1]
    else:
        last_digits[b mod (len(last_digits))]
