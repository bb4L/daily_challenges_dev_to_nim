import unittest, atm

suite "test calculator":
    test "working":
        check(solve(1250) == 4)
        check(solve(1500) == 3)

    test "not working":
        check(solve(1252) == -1)
