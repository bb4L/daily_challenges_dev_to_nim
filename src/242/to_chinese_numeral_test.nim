import unittest, to_chinese_numeral

suite "test to_chinese_numeral":
    test "10":
        check(to_chinese_numeral(10) == "十")

    test "11":
        check(to_chinese_numeral(11) == "十一")

    test "18":
        check(to_chinese_numeral(18) == "十八")

    test "21":
        check(to_chinese_numeral(21) == "二十一")

    test "110":
        check(to_chinese_numeral(110) == "一百一十")

    test "123":
        check(to_chinese_numeral(123) == "一百二十三")

    test "24681":
        check(to_chinese_numeral(24681) == "二万四千六百八十一")

    test "24081":
        check(to_chinese_numeral(24081) == "二万四千零八十一")
