import unittest, count, times

suite "test count":
    test "1995-04-03":
        check(count(parse("1995-04-03", "yyyy-MM-dd"), parse("2017-04-03",
                "yyyy-MM-dd")) == "1 Monday")

    test "1995-04-02":
        check(count(parse("1995-04-02", "yyyy-MM-dd"), parse("2018-04-02",
                "yyyy-MM-dd")) == "53 Mondays")

    test "2025-01-01":
        check(count(parse("2025-01-01", "yyyy-MM-dd"), parse("3100-01-01",
                "yyyy-MM-dd")) == "2921 Mondays")
