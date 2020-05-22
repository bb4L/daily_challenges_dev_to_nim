import unittest, grade

suite "test grade":
    test "64, 55, 92":
        check(grade(64, 55, 92) == "C-")
    test "33, 99, 95":
        check(grade(33, 99, 95) == "C+")
    test "99, 89, 93":
        check(grade(99, 89, 93) == "A-")
