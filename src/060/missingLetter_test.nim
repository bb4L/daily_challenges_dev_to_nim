import unittest, missingLetter

suite "test missingLetter":
    test "1":
        check(missingLetter(@['a', 'b', 'c', 'd', 'f']) == 'e')
    test "2":
        check(missingLetter(@['O', 'Q', 'R', 'S']) == 'P')
