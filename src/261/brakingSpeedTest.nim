import unittest, brakingSpeed

suite "test brakingSpeed":
    test "dist(100, 0.7)":
        check(dist(100, 0.7) == 83.9598760937531)

    test "speed(83.9598760937531, 0.7)":
        check(speed(83.9598760937531, 0.7) == 100.0)
