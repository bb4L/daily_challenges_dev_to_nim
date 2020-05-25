import unittest, connect_four

suite "test connect_four":
    test "1":
        check(connect_four(@["B_Red", "A_Yellow", "C_Red", "B_Yellow", "C_Red",
                "C_Yellow", "D_Red", "E_Yellow", "D_Red", "E_Yellow", "D_Red",
                "D_Yellow"]) == "Yellow")
    test "2":
        check(connect_four(@["A_Red", "A_Yellow", "B_Red", "B_Yellow", "C_Red",
                "C_Yellow", "D_Red", "D_Yellow"]) == "Red")
    test "3":
        check(connect_four(@["A_Red", "A_Yellow", "B_Red", "B_Yellow", "D_Red",
                "C_Yellow", "D_Red", "D_Yellow"]) == "Draw")
    test "4":
        check(connect_four(@["A_Red", "G_Yellow", "B_Red", "F_Yellow", "C_Red",
                "E_Yellow"]) == "Draw")
