import unittest, dollars

suite "test dollars":
    test "6.2":
        check(dollars(6.2) == "$6.20")
        
    test "0.2":
        check(dollars(0.2) == "$0.20")
     
    test "10.3":
        check(dollars(10.3) == "$10.30")
     
    test "120.21":
        check(dollars(120.21) == "$120.21")
