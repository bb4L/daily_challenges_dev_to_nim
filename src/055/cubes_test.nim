import unittest, cubes

suite "test cubes":
    test "1071225":
        check(cubes(1071225) == 45)
    test "91716553919377":
        check(cubes(91716553919377) == 0)
