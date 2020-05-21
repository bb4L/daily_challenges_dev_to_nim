import unittest, bmi

suite "test bmi":
    test "24.8, 190":
        check(bmi(24.8, 190) == "Underweight")
    test "71, 190.0":
        check(bmi(71, 190.0) == "Normal")
    test "100, 190":
        check(bmi(100, 190) == "Overweight")
    test "140, 210":
        check(bmi(140, 210) == "Obese")
