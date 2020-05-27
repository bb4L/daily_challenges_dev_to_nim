import unittest, alg

suite "test alg":
    test "2 5 10":
        check(alg(2, 5, 10) == 52)

    test "17 3 6":
        check(alg(17, 3, 6) == 35)
