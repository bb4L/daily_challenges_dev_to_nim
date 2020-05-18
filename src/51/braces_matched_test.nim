import unittest, braces_matched

suite "test braces_matched":
    test "{{{}{}}}":
        check(braces_matched("{{{}{}}}") == true)

    test "{{":
        check(braces_matched("{{") == false)

    test "{}}":
        check(braces_matched("{}}") == false)

    test "":
        check(braces_matched("") == true)
