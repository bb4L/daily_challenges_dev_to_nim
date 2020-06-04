import unittest, even_or_odd

suite "test even_or_odd":
    test "123456":
        check(evenOrOdd("123456") == "Even is greater than Odd")

    test "13":
        check(evenOrOdd("13") == "Odd is greater than Even")

    test "121":
        check(evenOrOdd("121") == "Even and Odd are the same")
