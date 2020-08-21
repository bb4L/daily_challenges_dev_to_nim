import unittest, solve

suite "test solve":
    test "[1,2,8,7] = 4":
        check(solve(@[1, 2, 8, 7]) == 4)

    test "[4,1,2,3,12] = 4":
        check(solve(@[4, 1, 2, 3, 12]) == 11)
