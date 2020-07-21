import unittest, nbYear

suite "test nbYear":
    test "1500, 5, 100, 5000":
        check(nbYear(1500, 5, 100, 5000) == 15)

    test "1500000, 2.5, 10000, 2000000":
        check(nbYear(1500000, 2.5, 10000, 2000000) == 10)


