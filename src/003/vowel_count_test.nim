import unittest, vowel_count

suite "test for vowels":

  test "no vowel":
    check(vowelCount("wsdfhngmbncbxvd") == 0)

  test "vowels":
    check(vowelCount("wsdfhongmibencbxavd") == 4)
