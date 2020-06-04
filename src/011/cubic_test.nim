import unittest, cubic_numbers

suite "test calculator":
    test "findCubics":
        check(findCubics("aqdf& 0 1 xyz 153 777.777") == "0 1 153")
    test "unlucky":
        check(findCubics("QK29 45[&erui") == "Unlucky")
