import unittest, twoSum

suite "test twoSum":
    test "1":
        # var to_check = tuple[idx1:int,idx2:int]
        # to_check = (0,2)
        check(twoSum( @[1, 2, 3], 4) == (0, 2))
