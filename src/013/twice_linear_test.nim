import unittest, twice_linear

suite "test calculator":
    test "working":
        check(dblLinear(5) == 10)
        check(dblLinear(10) == 22)
