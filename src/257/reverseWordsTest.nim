import unittest, reverseWords

suite "test reverseWords":
    test "This is an example!":
        check(reverseWords("This is an example!") == "sihT si na !elpmaxe")
    test "double spaces":
        check(reverseWords("double spaces") == "elbuod secaps")
