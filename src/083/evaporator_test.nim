import unittest, evaporator

suite "test evaporator":
    test "1":
        check(evaporator(10, 10, 10) == 22)
