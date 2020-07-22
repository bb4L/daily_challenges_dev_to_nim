import unittest, errorPrinter

suite "test errorPrinter":
    test "aaabbbbhaijjjm":
        check(errorPrinter("aaabbbbhaijjjm") == "0/14")

    test "aaaxbbbbyyhwawiwjjjwwm":
        check(errorPrinter("aaaxbbbbyyhwawiwjjjwwm") == "8/22")
