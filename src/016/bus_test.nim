import unittest, bus

suite "test bus":
    test "1":
        check(getPeopleInBus(@[(0, 1), (0, 6), (1, 5)]) == 11)
