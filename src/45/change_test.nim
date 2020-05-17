import unittest, change, tables

suite "test change":
    test "1":
        check(change(31) == {25: 1, 10:0, 5:1, 1:1}.toOrderedTable   )
