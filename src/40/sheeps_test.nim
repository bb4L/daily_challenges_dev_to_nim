import unittest, sheeps

suite "test sheeps":
    test "1":
        check(sheeps(1) == "1 sheep...")
    test "2":
        check(sheeps(2) == "1 sheep...2 sheep...")
    test "3":
        check(sheeps(3) == "1 sheep...2 sheep...3 sheep...")
