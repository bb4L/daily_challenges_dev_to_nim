import unittest, josephus_survivor

suite "test josephus_survivor":
    test "7, 3":
        check(josephus_survivor(7, 3) == 4)

    test "41, 3":
        check(josephus_survivor(41, 3) == 31)
