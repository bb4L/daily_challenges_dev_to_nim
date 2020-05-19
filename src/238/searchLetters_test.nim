import unittest, searchLetters

suite "test searchLetters":
    test "a **& cZ":
        check(searchLetters("a **& cZ") == "10100000000000000000000001")

    test "Abc e $$ z":
        check(searchLetters("Abc e $$ z") == "11101000000000000000000001")
