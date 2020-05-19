import unittest, morse

suite "test morsecode":
    test "test HEY JUDE":
        check(toMorse("HEYJUDE") == ".... . -.-- .--- ..- -.. .")
        check(toChar(".... . -.-- .--- ..- -.. .") == "HEYJUDE")
