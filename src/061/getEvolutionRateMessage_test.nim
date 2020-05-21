import unittest, getEvolutionRateMessage

suite "test getEvolutionRateMessage":
    test "11.29, 45.79":
        check(getEvolutionRateMessage(11.29, 45.79) == "A positive evolution of 306%.")

    test "95.12 66.84":
        check(getEvolutionRateMessage(95.12, 66.84) == "A negative evolution of 30%.")

    test "0 27.35":
        check(getEvolutionRateMessage(0, 27.35) == "A positive evolution of 2735%.")

    test "41.26 0":
        check(getEvolutionRateMessage(41.26, 0) == "A negative evolution of 4126%.")

    test "11.29, 45.79":
        check(getEvolutionRateMessage(11.29, 45.79) == "A positive evolution of 306%.")

    test "1.26, 1.26":
        check(getEvolutionRateMessage(1.26, 1.26) == "No evolution.")
