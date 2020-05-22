import unittest, movie

suite "test movie":
    test "1":
        check(movie(500, 15, 0.9) == 43)

    test "2":
        check(movie(100, 10, 0.95) == 24)
