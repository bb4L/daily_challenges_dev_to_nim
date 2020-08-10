import unittest, sandpile

suite "test sandpile":
    test "1":
        check(createSandpile("130\n121\n322") + createSandpile(
                "202\n210\n001") == createSandpile("332\n331\n323"))

    test "2":
        check(createSandpile("111\n111\n111") + createSandpile(
                "111\n111\n111") + createSandpile("010\n101\n100") ==
                createSandpile("232\n323\n322"))

    test "3":
        check(createSandpile("430\n121\n322") == createSandpile("101\n231\n322"))
