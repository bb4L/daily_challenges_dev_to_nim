import unittest
import StringPeeler

suite "test StringPeeler":
    test "abc":
        check(stringPeeler("abc") == "b")

    test "ac":
        check(stringPeeler("ac") == "")

    test "a":
        check(stringPeeler("a") == "")

    test "abcadsfwef":
        check(stringPeeler("abcadsfwef") == "bcadsfwe")
