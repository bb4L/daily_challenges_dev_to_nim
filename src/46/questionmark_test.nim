import unittest, questionmark

suite "test questionmark":
    test "1":
        check(questionmark("hello?") == "hello")
