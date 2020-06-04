import unittest, hide_phone_number

suite "test hide phonenumber":
    test "US 201-680-0202":
        check(hidePhoneNumber("201-680-0202", "USA") == "201-6xx-xxxx")

    test "CH 061 733 56 98":
        check(hidePhoneNumber("061 733 56 98", "CH") == "061 733 xx xx")
