import unittest, digitalRoot

suite "test digitalRoot":
    test "16":
        check(digitalRoot(16) == 7)

    test "942":
        check(digitalRoot(942) == 6)

    test "132189":
        check(digitalRoot(132189) == 6)

    test "493193":
        check(digitalRoot(493193) == 2)
