import unittest, potatoes

suite "test potatoes":
    test "99, 100, 98":
        check(potatoes(99, 100, 98) == 50)
