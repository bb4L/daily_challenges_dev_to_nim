import unittest, overTheRoad

suite "test overTheRoad":
    test "1, 3":
        check(overTheRoad(1, 3) == 6)
    test "3, 3":
        check(overTheRoad(3, 3) == 4)
    test "2, 3":
        check(overTheRoad(2, 3) == 5)
    test "3, 5":
        check(overTheRoad(3, 5) == 8)
    test "7, 11":
        check(overTheRoad(7, 11) == 16)
