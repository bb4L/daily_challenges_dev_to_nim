import unittest, cost

suite "test cost":
    test "45":
        check(cost(45) == 30)

    test "63":
        check(cost(63) == 30)

    test "84":
        check(cost(84) == 40)

    test "102":
        check(cost(102) == 50)
    test "273":
        check(cost(273) == 100)


