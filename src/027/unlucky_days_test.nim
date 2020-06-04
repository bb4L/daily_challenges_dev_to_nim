import unittest, unlucky_days

suite "test unlucky days":
    test "2015":
        check(unluckyDays(2015) == 3)

    test "1968":
        check(unluckyDays(1986) == 1)
