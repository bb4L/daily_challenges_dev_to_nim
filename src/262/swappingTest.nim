import unittest, swapping

suite "test swapping":
    test "'abcdef', 'abdfec'":
        check(swapping("abcdef", "abdfec") == 4)

    test "'abcd', 'accd'":
        check(swapping("abcd", "accd") == -1)

    test "'ab', 'ab'":
        check(swapping("ab", "ab") == 0)

    test "'ab', 'ba'":
        check(swapping("ab", "ba") == 1)

    test "'aaa', 'aaa'":
        check(swapping("aaa", "aaa") == 0)
