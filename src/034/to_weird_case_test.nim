import unittest, to_weird_case

suite "test toWeirdCase":
    test "String":
        check(toWeirdCase("String") == "StRiNg")
    test "Weird string case":
        check(toWeirdCase("Weird string case") == "WeIrD StRiNg CaSe")
