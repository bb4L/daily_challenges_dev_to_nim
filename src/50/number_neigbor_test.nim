import unittest, number_neigbor

suite "test number_neigbor":
    test "1":
        check(number_neigbor("5555555555") == @["555-555-5554","555-555-5556"])
