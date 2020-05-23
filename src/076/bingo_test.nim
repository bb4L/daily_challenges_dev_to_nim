import unittest, bingo

suite "test bingo":
    test "1":
        check(bingo(@[21, 13, 2, 7, 5, 14, 7, 15, 9, 10]) == "WIN")
    test "2":
        check(bingo(@[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == "LOSE")
