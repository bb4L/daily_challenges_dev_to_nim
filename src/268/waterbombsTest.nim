import unittest, waterbombs

suite "test waterbombs":
    test "xxYxx":
        check(waterbombs("xxYxx", 3) == 2)

    test "xxYxx":
        check(waterbombs("xxYxx", 1) == 4)

    test "xxxxYxYx":
        check(waterbombs("xxxxYxYx", 5) == 3)

    test "xxxxxYxYx":
        check(waterbombs("xxxxxYxYx", 2) == 5)
