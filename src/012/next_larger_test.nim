import unittest, next_larger

suite "test nextLarger":
    test "12":
        check(nextLarger(12) == 21)

    test "513":
        check(nextLarger(513) == 531)
    test "2019":
        check(nextLarger(2019) == 2091)
    test "9210":
        check(nextLarger(9210) == -1)
