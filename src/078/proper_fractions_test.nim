import unittest, proper_fractions

suite "test proper_fractions":
    test "1":
        check(proper_fractions(1) == 0)

    test "2":
        check(proper_fractions(2) == 1)

    test "5":
        check(proper_fractions(5) == 4)

    test "15":
        check(proper_fractions(15) == 8)

    test "25":
        check(proper_fractions(25) == 20)

    test "36":
        check(proper_fractions(36) == 12)
