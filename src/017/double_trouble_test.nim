import unittest, double_trouble

suite "test cola":
    test "3":
        check(cola(@["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 3) == "Penny")

    test "5":
        check(cola(@["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 5) == "Howard")

    test "6":
        check(cola(@["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 6) == "Sheldon")

    test "8":
        check(cola(@["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 8) == "Leonard")

    test "27":
        check(cola(@["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 27) == "Penny")
