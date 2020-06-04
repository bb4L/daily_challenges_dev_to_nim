import unittest, shift_matrix


suite "test shift_matrix":
    test "1":
        check(shiftMatrix(@[@['a', 'b', 'c', 'd'], @['1', '2', '3', '4'], @[
                'c', 'o', 'd', 'e'], @['b', 'l', 'a', 'h']], 1) == @[@['h', 'a',
                'b', 'c'], @['d', '1', '2', '3'],
        @['4', 'c', 'o', 'd'],
        @['e', 'b', 'l', 'a']
        ])

    test "2":
        check(shiftMatrix(@[@['d', 'u', 'd', 'e'], @['i', 'm', 'c', 'o'], @[
                'd', 'i', 'n', 'g']], 1) ==
            @[@['g', 'd', 'u', 'd'], @['e', 'i', 'm', 'c'], @['o', 'd', 'i', 'n']])

    test "3":
        check(shiftMatrix(@[@['h', 'i'], @['o', 'k']], 1) == @[@['k', 'h'], @[
                'i', 'o']])
