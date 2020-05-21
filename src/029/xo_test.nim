import unittest, xo

suite "xo test":
    test "ooxx":
        check(xo("ooxx") == true)

    test "xooxx":
        check(xo("xooxx") == false)

    test "ooxXm":
        check(xo("ooxXm") == true)

    test "zpzpzpp":
        check(xo("zpzpzpp") == true)

    test "zzoo":
        check(xo("zzoo") == false)
