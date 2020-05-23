import unittest, get_planet_name

suite "test get_planet_name":
    test "1":
        check(get_planet_name(3) == "Earth")
