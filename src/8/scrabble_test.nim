import unittest, scrabble_count

suite "test for scrabble":
  test "simple":
    check(scrabble_count("A") == 1)
    check(scrabble_count("A(d)") == 2)
    check(scrabble_count("A(t)") == 3)
    check(scrabble_count("A(dt)") == 6)
    check(scrabble_count("A(td)") == 6)
    check(scrabble_count("A(ttd)") == 18)
    check(scrabble_count("A(tdd)") == 12)
    check(scrabble_count("A(dtd)") == 12)
    check(scrabble_count("A(ddt)") == 12)
    check(scrabble_count("a") == 1)

  test "multiple":
    check(scrabble_count("AB") == 4)
    check(scrabble_count("A*B") == 5)
    check(scrabble_count("A**B") == 6)

    check(scrabble_count("SCRABBLE") == 14)
    check(scrabble_count("SCRABBLE(d)") == 28)
    check(scrabble_count("SCRABBLE(t)") == 42)

    check(scrabble_count("F**OX") == 21)
    check(scrabble_count("F**O*X**") == 38)

    check(scrabble_count("PROBLEM") == 63)
    check(scrabble_count("P**RO*B^LE*M") == 68)
    check(scrabble_count("PR*OB**LE*M**") == 77)

  test "complex":
    check(scrabble_count("ZER^O") == 12)
    check(scrabble_count("ZER**^O") == 12)
    check(scrabble_count("ZER^*O") == 12)
    check(scrabble_count("ZER^**O") == 12)
    check(scrabble_count("ZER*^*O") == 12)

  test "hello":
    check(scrabble_count("HE*LLO**") == 11)
    check(scrabble_count("HE*LLO**(d)") == 22)
    check(scrabble_count("HE^LLO**(d)") == 18)
