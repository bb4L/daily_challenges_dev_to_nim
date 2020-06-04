import unittest, braces_matched

suite "test bracesMatched":
    test "{{{}{}}}":
        check(bracesMatched("{{{}{}}}") == true)

    test "{{":
        check(bracesMatched("{{") == false)

    test "{}}":
        check(bracesMatched("{}}") == false)

    test "":
        check(bracesMatched("") == true)
