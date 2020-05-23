import unittest, setalarm

suite "test setalarm":
    test "1":
        check(setalarm(true, true) == false)
    test "2":
        check(setalarm(false, true) == false)
    test "3":
        check(setalarm(false, false) == false)
    test "4":
        check(setalarm(true, false) == true)
