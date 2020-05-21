import unittest, calculate

suite "test calculator":
    test "addition":
        check(calculate("2 + 2") == 4)
        check(calculate("2 + 3 + 5") == 10)

    test "subtraction":
        check(calculate("2 - 2") == 0)
        check(calculate("5 - 3 + 5") == 7)

    test "multiplication":
        check(calculate("2 * 55") == 110)
        check(calculate("5 * 3 * 5") == 75)

    test "division":
        check(calculate("12 / 4") == 3)
        check(calculate("50 / 10 / 5") == 1)
        check(calculate("100 / 10 / 2") == 5)

    test "mixed":
        check(calculate("2 * 3 + 5") == 11)
        check(calculate("2 + 3 * 5") == 17)
