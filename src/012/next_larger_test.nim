import unittest, next_larger

suite "test next_larger":
    test "12":
        check(next_larger(12) == 21)

    test "513":
        check(next_larger(513) == 531)
    test "2019":
        check(next_larger(2019) == 2091)
    test "9210":
        check(next_larger(9210) == -1)
