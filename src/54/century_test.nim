import unittest, century

suite "test century":
    test "2259":
        check(century(2259) == "23rd")
    test "1124":
        check(century(1124) == "12th")
    test "2000":
        check(century(2000) == "21st")
    test "1999":
        check(century(2000) == "20st")
    test "2011":
        check(century(2011) == "21st")
    test "2154":
        check(century(2154) == "22nd")
