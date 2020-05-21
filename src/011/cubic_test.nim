import unittest, cubic_numbers

suite "test calculator":
    test "find_cubics":
        check(find_cubics("aqdf& 0 1 xyz 153 777.777") == "0 1 153")
    test "unlucky":
        check(find_cubics("QK29 45[&erui") == "Unlucky")
