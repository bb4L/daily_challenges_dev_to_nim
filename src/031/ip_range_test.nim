import unittest, ip_range

suite "test ipsBetween":
    test "10.0.0.0 10.0.0.50":
        check(ipsBetween("10.0.0.0", "10.0.0.50") == 50)

    test "10.0.0.0 10.0.1.00":
        check(ipsBetween("10.0.0.0", "10.0.1.0") == 256)

    test "20.0.0.10 20.0.1.00":
        check(ipsBetween("20.0.0.10", "20.0.1.0") == 246)
