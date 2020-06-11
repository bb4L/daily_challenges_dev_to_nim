import unittest, halvingSum

suite "test halvingSum":
    test "25":
        check(halvingSum(25) == 47)
    test "127":
        check(halvingSum(127) == 247)
