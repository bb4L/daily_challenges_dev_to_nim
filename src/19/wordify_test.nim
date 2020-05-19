import unittest, wordify

suite "test wordify":
    test "1":
        check(wordify(1) == "one")

    test "12":
        check(wordify(12) == "twelve")

    test "17":
        check(wordify(17) == "seventeen")

    test "56":
        check(wordify(56) == "fifty six")

    test "90":
        check(wordify(90) == "ninety")

    test "326":
        check(wordify(326) == "three hundred twenty six")
