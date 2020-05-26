import unittest, money_value

suite "test money_value":
    test "12.34":
        check(money_value("12.34") == 12.34)

    test " $5.67":
        check(money_value(" $5.67") == 5.67)

    test "$-2.3456":
        check(money_value("$-2.3456") == -2.3456)

    test "-0.89":
        check(money_value("-0.89") == -0.89)

    test "-$ 0.1":
        check(money_value("-$ 0.1") == -0.10)

    test "$-2.3456":
        check(money_value("$-2.3456") == -2.3456)

    test "   .11":
        check(money_value("   .11") == 0.11)

    test "$.2":
        check(money_value("$.2") == 0.20)

    test "-.34":
        check(money_value("-.34") == -0.34)

    test "$$":
        check(money_value("$$") == 0.0)




