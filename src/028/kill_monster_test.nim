import unittest, kill_monster

suite "test kill monster":
    test "100 3 33":
        check(killMonster(100, 3, 33) == "hits: 0, damage: 0, health: 100")

    test "50 7 10":
        check(killMonster(50, 7, 10) == "hits: 2, damage: 20, health: 30")
