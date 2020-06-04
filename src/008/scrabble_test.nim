import unittest, scrabble_count

suite "test for scrabble":
  test "simple":
    check(scrabbleCount("A") == 1)
    check(scrabbleCount("A(d)") == 2)
    check(scrabbleCount("A(t)") == 3)
    check(scrabbleCount("A(dt)") == 6)
    check(scrabbleCount("A(td)") == 6)
    check(scrabbleCount("A(ttd)") == 18)
    check(scrabbleCount("A(tdd)") == 12)
    check(scrabbleCount("A(dtd)") == 12)
    check(scrabbleCount("A(ddt)") == 12)
    check(scrabbleCount("a") == 1)

  test "multiple":
    check(scrabbleCount("AB") == 4)
    check(scrabbleCount("A*B") == 5)
    check(scrabbleCount("A**B") == 6)

    check(scrabbleCount("SCRABBLE") == 14)
    check(scrabbleCount("SCRABBLE(d)") == 28)
    check(scrabbleCount("SCRABBLE(t)") == 42)

    check(scrabbleCount("F**OX") == 21)
    check(scrabbleCount("F**O*X**") == 38)

    check(scrabbleCount("PROBLEM") == 63)
    check(scrabbleCount("P**RO*B^LE*M") == 68)
    check(scrabbleCount("PR*OB**LE*M**") == 77)

  test "complex":
    check(scrabbleCount("ZER^O") == 12)
    check(scrabbleCount("ZER**^O") == 12)
    check(scrabbleCount("ZER^*O") == 12)
    check(scrabbleCount("ZER^**O") == 12)
    check(scrabbleCount("ZER*^*O") == 12)

  test "hello":
    check(scrabbleCount("HE*LLO**") == 11)
    check(scrabbleCount("HE*LLO**(d)") == 22)
    check(scrabbleCount("HE^LLO**(d)") == 18)
