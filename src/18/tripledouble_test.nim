import unittest, tripledouble

suite "test tripledouble":

    test "145551, 5255336":
        check(tripledouble(145551, 5255336) == 1)

    test "145551, 525336":
        check(tripledouble(145551, 525336) == 0)

    test "8777, 877":
        check(tripledouble(8777, 877) == 1)
