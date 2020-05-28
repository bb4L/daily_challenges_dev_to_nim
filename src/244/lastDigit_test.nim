import unittest, lastDigit

suite "test lastDigit":
    test "1":
        check(lastDigit(4, 1) == 4)

    test "2":
        check(lastDigit(4, 2) == 6)

    test "3":
        check(lastDigit(9, 7) == 9)

    test "4":
        check(lastDigit(0, 0) == 1)

    test "5":
        check(lastDigit(20, 0) == 1)
