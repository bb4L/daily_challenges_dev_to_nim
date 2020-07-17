import unittest, solve

suite "test solve":
    test "coDe":
        check(solve("coDe") == "code")

    test "CODe":
        check(solve("CODe") == "CODE")

    test "coDe":
        check(solve("coDE") == "code")

    test "Code":
        check(solve("Code") == "code")
