import unittest, areaOrPerimeter

suite "test areaOrPerimeter":
    test "6, 10":
        check(areaOrPerimeter(6, 10) == 32)
    test "4, 4":
        check(areaOrPerimeter(4, 4) == 16)
