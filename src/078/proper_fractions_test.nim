import unittest, proper_fractions

suite "test proper_fractions":
    test "1":
        check(properFractions(1) == 0)

    test "2":
        check(properFractions(2) == 1)

    test "5":
        check(properFractions(5) == 4)

    test "15":
        check(properFractions(15) == 8)

    test "25":
        check(properFractions(25) == 20)

    test "36":
        check(properFractions(36) == 12)
