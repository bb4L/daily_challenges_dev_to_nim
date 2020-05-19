import unittest, greed

suite "test greed":
    test "5 1 3 4 1":
        check(greed(@[5, 1, 3, 4, 1]) == 250)

    test "1 1 1 3 1":
        check(greed(@[1, 1, 1, 3, 1]) == 1100)

    test "2 4 4 5 4 ":
        check(greed(@[2, 4, 4, 5, 4]) == 450)
