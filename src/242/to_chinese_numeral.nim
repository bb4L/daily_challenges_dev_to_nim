import math

const DIGITS = @["零", "一", "二", "三", "四", "五", "六", "七", "八", "九"]
const TENS = @["十", "百", "千", "万"]
const POINT = "点"
const NEGATIVE = "负"

proc to_chinese_numeral*(number: int): string =
    var n = abs(number)

    if n in 10 .. 19:
        result.add(TENS[0])

        let d = n mod 10
        if d > 0:
            result.add(DIGITS[n mod 10])

    else:

        if number < 0:
            result.add(NEGATIVE)

        var act_value = 0
        var act_multiplier = 0

        for i in countdown(4, 2, 1):
            act_multiplier = pow(10.0, i.toFloat()).toInt()

            if n div act_multiplier >= 0:
                act_value = n div act_multiplier
                n -= act_multiplier * act_value

                if act_value > 0:
                    result.add(DIGITS[act_value])
                    result.add(TENS[i-1])
                elif n > 0 and len(result) > 0 and result != DIGITS[0]:
                    result.add(DIGITS[0])

        if n div 10 > 0:
            act_value = n div 10
            n -= 10 * act_value

            if act_value > 0:
                result.add(DIGITS[act_value])
                result.add(TENS[0])

            elif n > 0:
                result.add(DIGITS[0])

        if n > 0:
            result.add(DIGITS[n])

        # TODO: not in DEV challenge but: add float support
