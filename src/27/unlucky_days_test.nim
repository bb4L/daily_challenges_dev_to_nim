import unittest, unlucky_days

suite "test unlucky days":
    test "2015":
        check(unlucky_days(2015) == 3)
    
    test "1968":
        check(unlucky_days(1986) == 1)