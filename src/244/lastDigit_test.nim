import unittest, lastDigit

suite "test lastDigit":
    test "1":
        check(lastDigit(4, 1) == 4)

    test "2":
        check(lastDigit(4, 2) == 6)

    test "3":
        check(lastDigit(9, 7) == 9)
