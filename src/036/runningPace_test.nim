import unittest, runningPace

suite "test runningPace":
    test "1":
        check(runningPace(3, "8:00") == "02:40")
    test "2":
        check(runningPace(5.3, "50:25") == "09:30")
    test "3":
        check(runningPace(176, "50:25") == "00:17")
