import unittest, casinorounds

suite "test casinorounds":
    test "[1,1,1]":
        check(casinorounds(@[1, 1, 1]) == 1)
    test "[1,2,1]":
        check(casinorounds(@[1, 2, 1]) == 2)
    test "[4,1,1]":
        check(casinorounds(@[4, 1, 1]) == 2)
    test "[8,2,8]":
        check(casinorounds(@[8, 2, 8]) == 9)
    test "[8,1,4]":
        check(casinorounds(@[8, 1, 4]) == 5)
    test "[7,4,10]":
        check(casinorounds(@[7, 4, 10]) == 10)
    test "[12,12,12]":
        check(casinorounds(@[12, 12, 12]) == 18)
    test "[1, 23, 2]":
        check(casinorounds(@[1, 23, 2]) == 3)
    test "[410947, 759919, 892734]":
        check(casinorounds(@[410947, 759919, 892734]) == 1031800)
    test "[709202, 838969, 991073]":
        check(casinorounds(@[709202, 838969, 991073]) == 1269622)
