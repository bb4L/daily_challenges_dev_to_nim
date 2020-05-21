import unittest, smeltingIron, tables

suite "test smeltingIron":
    test "73":
        check(smeltingIron(73) == {"Lava": 1, "Blaze rod": 0, "Coals": 0,
                "Block of Wood": 0, "Sticks": 3}.toOrderedTable())

    test "11":
        check(smeltingIron(11) == {"Lava": 0, "Blaze rod": 1, "Coals": 0,
                "Block of Wood": 0, "Sticks": 1}.toOrderedTable())

    test "8":
        check(smeltingIron(8) == {"Lava": 0, "Blaze rod": 0, "Coals": 1,
                "Block of Wood": 0, "Sticks": 8}.toOrderedTable())

    test "2":
        check(smeltingIron(2) == {"Lava": 0, "Blaze rod": 0, "Coals": 0,
                "Block of Wood": 1, "Sticks": 7}.toOrderedTable())

    test "1":
        check(smeltingIron(1) == {"Lava": 0, "Blaze rod": 0, "Coals": 0,
                "Block of Wood": 0, "Sticks": 11}.toOrderedTable())

    test "100":
        check(smeltingIron(100) == {"Lava": 1, "Blaze rod": 2, "Coals": 0,
                "Block of Wood": 4, "Sticks": 0}.toOrderedTable())
