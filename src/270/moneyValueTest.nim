import unittest, moneyValue

suite "test moneyValue":

    test "12.34":
        check(moneyValue("12.34") == 12.34)

    test " $5.67":
        check(moneyValue(" $5.67") == 5.67)

    test "-0.89":
        check(moneyValue("-0.89") == -0.89)

    test "-$ 0.1":
        check(moneyValue("-$ 0.1") == -0.10)

    test "$-2.3456":
        check(moneyValue("$-2.3456") == -2.3456)

    test "007":
        check(moneyValue("007") == 7.00)
    test " $ 89":
        check(moneyValue(" $ 89") == 89.0)
    test "   .11":
        check(moneyValue("   .11") == 0.11)
    test "$.2":
        check(moneyValue("$.2") == 0.20)
    test "-.34":
        check(moneyValue("-.34") == -0.34)
    test "$$$":
        check(moneyValue("$$$") == 0.0)
