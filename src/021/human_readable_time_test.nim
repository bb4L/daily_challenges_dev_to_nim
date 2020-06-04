import unittest, human_readable_time

suite "test human readable time":
    test "62":
        check(humanReadable(62) == "1 minute and 2 seconds")

    test "120":
        check(humanReadable(120) == "2 minutes")

    test "3662":
        check(humanReadable(3662) == "1 hour, 1 minute and 2 seconds")

    test "2000487":
        check(humanReadable(2000487) == "23 days, 3 hours, 41 minutes and 27 seconds")

    test "1563739200":
        check(humanReadable(1563739200) == "49 years, 213 days and 20 hours")
