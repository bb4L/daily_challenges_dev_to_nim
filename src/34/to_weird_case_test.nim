import unittest, to_weird_case

suite "test to_weird_case":
    test "String":
        check(to_weird_case("String") == "StRiNg")
    test "Weird string case":
        check(to_weird_case("Weird string case") == "WeIrD StRiNg CaSe")