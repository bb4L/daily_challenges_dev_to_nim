import unittest, coins

let k1 = @[1, 5, 10, 25]
let k2 = @[1, 2, 5, 10, 20, 50]
let k3 = @[1, 5, 20, 25]


suite "test coins":
    test "1 123":
        check(coins(k1, 123) == 9)

    test "2 123":
        check(coins(k2, 123) == 5)

    test "1 75":
        check(coins(k1, 75) == 3)

    test "2 123":
        check(coins(k2, 75) == 3)

    test "3 40":
        check(coins(k3, 40) == 2)
