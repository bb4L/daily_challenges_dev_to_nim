import unittest, wave

suite "test wave":
    test "hello":
        check(wave("hello") == @["Hello", "hEllo", "heLlo", "helLo", "hellO"])
