import unittest, find_outlier

suite "test find_outlier":
    test "[2, 4, 0, 100, 4, 11, 2602, 36]":
        check(find_outlier(@[2, 4, 0, 100, 4, 11, 2602, 36]) == 11)
    
    test "[160, 3, 1719, 19, 11, 13, -21]":
        check(find_outlier(@[160, 3, 1719, 19, 11, 13, -21]) == 160)

