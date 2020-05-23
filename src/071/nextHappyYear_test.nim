import unittest, nextHappyYear

suite "test nextHappyYear":
    test "7712":
        check(nextHappyYear(7712) == 7801)

    test "1001":
        check(nextHappyYear(1001) == 1023)

    test "2019":
        check(nextHappyYear(2018) == 2019)

