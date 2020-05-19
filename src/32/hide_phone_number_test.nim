import unittest, hide_phone_number

suite "test hide phonenumber":
    test "US 201-680-0202":
        check(hide_phone_number("201-680-0202", "USA") == "201-6xx-xxxx")

    test "CH 061 733 56 98":
        check(hide_phone_number("061 733 56 98", "CH") == "061 733 xx xx")
