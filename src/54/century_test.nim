import unittest, century

suite "test century":
    test "2259":
        check(century(2259) == "23rd")
    test "1124":
        check(century(1124) == "12th")
    test "2000":
        check(century(2000) == "21st")
