import unittest, fightResolve

suite "test fightResolve":
    test "1":
        check(fightResolve('a','P') == 'P')

    test "2":
        check(fightResolve('k','A') == 'k')

    test "3":
        check(fightResolve('S','A') == ' ')
