import unittest, phone

const phonebook = "/+1-541-754-3010 156 Alphand_St. <J Steeve>\n /+1-541-754-3010 156 Alphand_St. <J Steeve>\n 133, Green, Rd. <E Kustur> NY-56423 ;+1-541-914-3010!\n <Anastasia> +48-421-674-8974 Via     Quirinal Roma\n "

suite "test phone":
    test "1":
        check(phone(phonebook, "1-541-914-3010") == "Phone => 1-541-914-3010, Name => E Kustur, Address => 133 Green Rd. NY-56423")
    test "2":
        check(phone(phonebook, "1-541-754-3010") == "Error => Too many people: 1-541-754-3010")
    test "3":
        check(phone(phonebook, "48-421-674-8974") == "Phone => 48-421-674-8974, Name => Anastasia, Address => Via Quirinal Roma")
    test "4":
        check(phone(phonebook, "1-541-754-3111") == "Error => Not found: 1-541-754-3111")
