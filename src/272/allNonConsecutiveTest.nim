import unittest, allNonConsecutive

suite "test allNonConsecutive":
    test "1":
        check(allNonConsecutive(@[1, 2, 3, 4, 6, 7, 8, 10]) == @[ReturnData(
                n: 6, i: 4), ReturnData(n: 10, i: 7)])
