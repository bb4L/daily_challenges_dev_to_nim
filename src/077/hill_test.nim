import unittest, hill

suite "test hill":
    test "1":
        check(hill(@["^^^^^^        ", " ^^^^^^^^     ", "  ^^^^^^^     ",
                "  ^^^^^       ", "  ^^^^^^^^^^^ ", "  ^^^^^^      ",
                "  ^^^^        "]) == 3)
