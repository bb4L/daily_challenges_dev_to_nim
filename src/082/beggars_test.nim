import unittest, beggars

suite "test beggars":
    test "1":
        check(beggars(@[1, 2, 3, 4, 5], 2) == @[9, 6])

    test "2":
        check(beggars(@[1, 2, 3, 4, 5], 3) == @[5, 7, 3])
