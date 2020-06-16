import unittest, duplicateEncoder

suite "test duplicateEncoder":
    test "Success":
        check(duplicateEncoder("Success") == ")())())")

    test "din":
        check(duplicateEncoder("din") == "(((")

    test "recede":
        check(duplicateEncoder("recede") == "()()()")

    test "(( @":
        check(duplicateEncoder("(( @") == "))((")
