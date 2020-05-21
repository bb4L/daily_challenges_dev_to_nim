import unittest, middleName

suite "test middleName":
    test "Jack Ryan":
        check(middleName("Jack Ryan") == "Jack Ryan")

    test "Lois Mary Lane":
        check(middleName("Lois Mary Lane") == "Lois M. Lane")

    test "Dimitri":
        check(middleName("Dimitri") == "Dimitri")

    test "Alice Betty Catherine Davis":
        check(middleName("Alice Betty Catherine Davis") == "Alice B. C. Davis")


