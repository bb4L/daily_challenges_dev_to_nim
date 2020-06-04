import unittest, original_price

suite "test original price":
    test "75 25":
        check(originalPrice(75, 25) == 100.00)
