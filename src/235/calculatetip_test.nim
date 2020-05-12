import unittest, calculatetip

suite "test calculatetip":
    test "30 poor":
        check(calculatetip(30,"poor") == 2)

    test "20 hi":
        check(calculatetip(20,"hi") == -1)

    test "107.65 great":
        check(calculatetip(107.65,"great") == 17)
