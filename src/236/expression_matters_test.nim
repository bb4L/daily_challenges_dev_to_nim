import unittest, expression_matters

suite "test expression matters":
    test "1,2,3":
        check(expressionMatters(@[1, 2, 3]) == 9)

    test "3,3,3":
        check(expressionMatters(@[3, 3, 3]) == 27)

    test "5,6,1":
        check(expressionMatters(@[5, 6, 1]) == 35)

    test "4,1,8":
        check(expressionMatters(@[4, 1, 8]) == 40)

    test "1,1,1":
        check(expressionMatters(@[1, 1, 1]) == 3)


