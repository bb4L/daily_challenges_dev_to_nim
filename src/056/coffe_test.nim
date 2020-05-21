import unittest, coffe

suite "test coffe":
    test "2.20":
        check(coffe(2.2) == "Here is your Americano, have a nice day!")

    test "2.30":
        check(coffe(2.30) == "Here is your Latte, have a nice day!")

    test "2.40":
        check(coffe(2.40) == "Here is your Flat white, have a nice day!")

    test "3.50":
        check(coffe(3.50) == "Here is your Filter, have a nice day!")

    test "2.21":
        check(coffe(2.21) == "Sorry, exact change only, try again tomorrow!")

