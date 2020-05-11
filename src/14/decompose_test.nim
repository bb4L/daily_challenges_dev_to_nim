import unittest, decompose

suite "test decompose":
    test "11":
        check(decompose(11) == @[1,2,4,10])
    
    test "50":
        check(decompose(50) == @[1,3,5,8,49])