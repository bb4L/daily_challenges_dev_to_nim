import unittest, disquisedSequence

suite "test disquisedSequence":
    test "17":
        check(disquisedSequence(17) == 131072)

    test "21":
        check(disquisedSequence(21) == 2097152)
