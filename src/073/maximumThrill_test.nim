import unittest, maximumThrill

suite "test maximumThrill":
    test "1":
        check(maximumThrill(@[3, 1, 3]) == 8)
    test "2":
        check(maximumThrill(@[2, 3, 4, 5]) == 10)
    test "3":
        check(maximumThrill(@[10, 10, 11, 13, 7, 8, 9]) == 26)
    test "4":
        check(maximumThrill(@[2, 3, 4, 5, 10, 6, 7, 8, 9, 10, 11, 12, 4, 4, 2,
                2, 12, 8]) == 34)
