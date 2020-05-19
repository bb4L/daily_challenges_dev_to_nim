import unittest, twice_linear

suite "test calculator":
    test "working":
        check(dbl_linear(5) == 10)
        check(dbl_linear(10) == 22)
