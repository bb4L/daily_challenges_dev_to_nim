import unittest, nameSwap

suite "test nameSwap":
    test "1":
        check(nameSwap("Foo Bar") == "Bar Foo")
        check(nameSwap("Foo     Bar") == "Bar Foo")
        check(nameSwap("    Foo Bar") == "Bar Foo")
        check(nameSwap("Foo Bar   ") == "Bar Foo")
        check(nameSwap("Foo   ") == "Foo")
        check(nameSwap("") == "")
