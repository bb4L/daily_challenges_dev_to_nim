import unittest, shortest_path

suite "test shortest path":
    test "3":
        check(shortestPath(3) == 2)
    test "12":
        check(shortestPath(12) == 4)
