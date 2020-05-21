import unittest, shortest_path

suite "test shortest path":
    test "3":
        check(shortest_path(3) == 2)
    test "12":
        check(shortest_path(12) == 4)
