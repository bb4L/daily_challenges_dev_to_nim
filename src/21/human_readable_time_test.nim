import unittest, human_readable_time

suite "test human readable time":
    test "62":
        check(human_readable(62)=="1 minute and 2 seconds")
    
    test "120":
        check(human_readable(120)=="2 minutes")

    test "3662":
        check(human_readable(3662) == "1 hour, 1 minute and 2 seconds")

    test "2000487":
        check(human_readable(2000487) == "23 days, 3 hours, 41 minutes and 27 seconds")
    
    test "1563739200":
        check(human_readable(1563739200) == "49 years, 213 days and 20 hours")