import unittest, findPlate

suite "test findPlate":
    test "3":
        check(findPlate(3) == "aaa004")

    test "1487":
        check(findPlate(1487) == "baa489")


    test "40000":
        check(findPlate(40000) == "oba041")


    test "17558423":
        check(findPlate(17558423) == "zzz999")


    test "234567":
        check(findPlate(234567) == "aja802")


