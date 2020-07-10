import unittest, equalSides

suite "test equalSides":
    test "1, 2, 3, 4, 3, 2, 1":
        check(equalSides(@[1, 2, 3, 4, 3, 2, 1]) == 3)

    test "1,100,50,-51,1,1":
        check(equalSides(@[1, 100, 50, -51, 1, 1]) == 1)

