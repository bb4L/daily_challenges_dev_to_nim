import unittest, comparePokerHand

suite "test comparePokerHand":
    test "1":
        check(comparePokerHand("2H 3H 4H 5H 6H", "AS AD AC AH JD") == "WIN")
    test "2":
        check(comparePokerHand("2H 3H 5H 4H 6H", "AS AD AC AH JD") == "WIN")
    test "3":
        check(comparePokerHand("2H 3H 4H 5H 6H", "KS AS TS QS JS") == "LOSS")
    test "4":
        check(comparePokerHand("2H 3H 5H 6H 7H", "2S 3H 4H 5S 6C") == "WIN")
    test "5":
        check(comparePokerHand("2S 3H 4H 5S 6C", "3D 4C 5H 6H 2S") == "DRAW")

    test "6":
        check(comparePokerHand("2S AH 4H 5S KC", "AH AC 5H 6H 7S") == "LOSS")
    test "7":
        check(comparePokerHand("3S 3H 3C AD AH", "4H 4C 4S 2H 2S") == "LOSS")
