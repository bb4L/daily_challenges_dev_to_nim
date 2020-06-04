import math

const DIGITS = @["零", "一", "二", "三", "四", "五", "六", "七", "八", "九"]
const TENS = @["十", "百", "千", "万"]
const POINT = "点"
const NEGATIVE = "负"

proc toChineseNumeral*(number: int): string =
    var n = abs(number)

    if n in 10 .. 19:
        result.add(TENS[0])

        let d = n mod 10
        if d > 0:
            result.add(DIGITS[n mod 10])

    else:

        if number < 0:
            result.add(NEGATIVE)

        var actValue = 0
        var actMultiplier = 0

        for i in countdown(4, 2, 1):
            actMultiplier = pow(10.0, i.toFloat()).toInt()

            if n div actMultiplier >= 0:
                actValue = n div actMultiplier
                n -= actMultiplier * actValue

                if actValue > 0:
                    result.add(DIGITS[actValue])
                    result.add(TENS[i-1])
                elif n > 0 and len(result) > 0 and result != DIGITS[0]:
                    result.add(DIGITS[0])

        if n div 10 > 0:
            actValue = n div 10
            n -= 10 * actValue

            if actValue > 0:
                result.add(DIGITS[actValue])
                result.add(TENS[0])

            elif n > 0:
                result.add(DIGITS[0])

        if n > 0:
            result.add(DIGITS[n])

        # TODO: not in DEV challenge but: add float support
