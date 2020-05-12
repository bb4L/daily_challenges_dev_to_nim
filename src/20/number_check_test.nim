import unittest, number_check

suite "test number check":
    test "7":
        check(number_check(7) == @[true,false,false])

    test "-7":
        check(number_check(-7) == @[false,false,false])

    test "10":
        check(number_check(10) == @[false,true,true])
        
    test "-10":
        check(number_check(-10) == @[false,true,true])
        