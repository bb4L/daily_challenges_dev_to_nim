import unittest, subtractSum

suite "test subtractSum":
    test "5":
        check(subtractSum(5) == "melon")
    test "325":
        check(subtractSum(325) == "apple")
