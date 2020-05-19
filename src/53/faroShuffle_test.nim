import unittest, faroShuffle

suite "test faroShuffle":
    test "1":
        check(faroShuffle(@["ace", "two", "three", "four", "five", "six"]) == @[
                "ace", "four", "two", "five", "three", "six"])
