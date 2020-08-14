import unittest, areOfPerimeter

suite "test areOfPerimeter":
    test "6, 10":
        check(areOfPerimeter(6, 10) == 32)
    test "4, 4":
        check(areOfPerimeter(4, 4) == 16)
