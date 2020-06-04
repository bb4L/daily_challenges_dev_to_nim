import unittest, to_chinese_numeral

suite "test to_chinese_numeral":
    test "10":
        check(toChineseNumeral(10) == "十")

    test "11":
        check(toChineseNumeral(11) == "十一")

    test "18":
        check(toChineseNumeral(18) == "十八")

    test "21":
        check(toChineseNumeral(21) == "二十一")

    test "110":
        check(toChineseNumeral(110) == "一百一十")

    test "123":
        check(toChineseNumeral(123) == "一百二十三")

    test "24681":
        check(toChineseNumeral(24681) == "二万四千六百八十一")

    test "24081":
        check(toChineseNumeral(24081) == "二万四千零八十一")
