import unittest, digit5

suite "test digit5":
    test "1234567890":
        check(digit5("1234567890") == 67890)
