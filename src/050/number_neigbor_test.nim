import unittest, number_neigbor

suite "test numberNeigbor":
    test "1":
        check(numberNeigbor("5555555555") == @["555-555-5554", "555-555-5556"])
