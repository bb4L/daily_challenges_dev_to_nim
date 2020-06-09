import unittest, anyOdd

suite "test anyOdd":
    test "2":
        check(anyOdd(2) == 1)
    test "170":
        check(anyOdd(170) == 1)
    test "5":
        check(anyOdd(5) == 0)
