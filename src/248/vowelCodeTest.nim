import unittest, vowelCode

suite "test vowelCode":
    test "hello":
        check(encode("hello") == "h2ll4")

    test "h3 th2r2":
        check(decode("h3 th2r2") == "hi there")

