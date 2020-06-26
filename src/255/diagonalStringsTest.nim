import unittest, diagonalStrings

suite "test diagonalStrings":
    test "1":
        check(diagonalStrings(@["1234", "aBcd", "kaTa", "qweR"]) == @["1btr",
                "aae4", "kw3d", "q2ca"])
    test "2":
        check(diagonalStrings(@["ab", "12"]) == @["1b", "a2"])
