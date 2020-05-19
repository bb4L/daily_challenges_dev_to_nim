import unittest, decomp

suite "tests for decomp":

  test "4":
    check(decomp(4) == "2^3 * 3")

  test "22":
    check(decomp(22) == "2^19 * 3^9 * 5^4 * 7^3 * 11^2 * 13 * 17 * 19")

  test "25":
    check(decomp(25) == "2^22 * 3^10 * 5^6 * 7^3 * 11^2 * 13 * 17 * 19 * 23")
