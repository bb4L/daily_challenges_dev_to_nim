import unittest, pizza, tables

suite "test pizza":
    test "1":
        check(pizza(5, 20, {"John Doe": @[22, 30, 11, 17, 15, 52, 27, 12],
                "Jane Doe": @[5, 17, 30, 33, 40, 22, 26, 10, 11,
                45]}.toTable) == @["Jane Doe"])
