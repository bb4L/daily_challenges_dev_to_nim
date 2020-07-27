import unittest, solve

suite "test solve":
    test "[3, 4, 4, 3, 6, 3]":
        check(solve(@[3, 4, 4, 3, 6, 3]) == @[4, 6, 3])

    test "[1,2,1,2,1,2,3]":
        check(solve(@[1, 2, 1, 2, 1, 2, 3]) == @[1, 2, 3])

    test "[1,1,4,5,1,2,1]":
        check(solve(@[1, 1, 4, 5, 1, 2, 1]) == @[4, 5, 2, 1])

    test "[1,2,1,2,1,1,3]":
        check(solve(@[1, 2, 1, 2, 1, 1, 3]) == @[2, 1, 3])
