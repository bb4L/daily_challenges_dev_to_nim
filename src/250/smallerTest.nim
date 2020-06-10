import unittest, smaller

suite "test smaller":
    test "@[5, 4, 3, 2, 1]":
        check(smaller(@[5, 4, 3, 2, 1]) == @[4, 3, 2, 1, 0])

    test "@[1,2,0]":
        check(smaller(@[1, 2, 0]) == @[1, 1, 0])
