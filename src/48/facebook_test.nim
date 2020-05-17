import unittest, facebook

suite "test facebook":
    test "[]":
        check(facebook(@[]) == "no one likes this")

    test "Peter":
        check(facebook(@["Peter"]) == "Peter likes this")


    test "Jacob, Alex":
        check(facebook(@["Jacob","Alex"]) == "Jacob and Alex like this")


    test "Alex, Jacob, Mark, Max":
        check(facebook(@["Alex", "Jacob", "Mark", "Max"]) == "Alex, Jacob and 2 others like this")

