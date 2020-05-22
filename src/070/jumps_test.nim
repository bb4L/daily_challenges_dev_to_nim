import unittest, jumps

suite "test jumps":
    test "1":
        check(jumps(@[Result(name: "Sergey", results: @["", "O", "XO", "O",
                "XXO", "XXX", "", ""]),
        Result(name: "Jan", results: @["", "", "", "O", "O", "XO", "XXO",
                "XXX"]),
        Result(name: "Bruce", results: @["", "XO", "XXO", "XXX", "", "", "",
                ""]),
        Result(name: "HerrWert", results: @["XXX", "", "", "", "", "", "",
                ""])]) == @["1: Jan", "2: Sergey", "3: Bruce"])
    test "2":
        check(jumps(@[Result(name: "Sergey", results: @["", "", "", "O", "O",
                "XO", "XXO", "XXX"]),
        Result(name: "Jan", results: @["", "", "", "O", "O", "XO", "XXO",
                "XXX"]),
        Result(name: "Bruce", results: @["", "XO", "XXO", "XXX", "", "", "",
                ""]),
        Result(name: "HerrWert", results: @["XXX", "", "", "", "", "", "",
                ""])]) == @["1: Jan, Sergey (jump-off)", "3: Bruce"])
    test "3":
        check(jumps(@[Result(name: "Sergey", results: @["", "", "", "O", "O",
                "XO", "XXO", "XXX"]),
        Result(name: "Jan", results: @["", "", "", "O", "O", "XO", "XXO",
                "XXX"]),
        Result(name: "Bruce", results: @["", "XO", "XXO", "XXX", "", "", "",
                ""]),
        Result(name: "HerrWert", results: @["", "XO", "XXO", "XXX", "", "", "",
                ""])]) == @["1: Jan, Sergey (jump-off)",
                        "3: Bruce, HerrWert (tie)"])

    test "3":
        check(jumps(@[Result(name: "Sergey", results: @["", "", "", "O", "O",
                "XO", "XXO", "XXX"]),
        Result(name: "Jan", results: @["", "XO", "XXO", "XXX", "", "", "",
                ""]),
        Result(name: "Bruce", results: @["", "XO", "XXO", "XXX", "", "", "",
                ""]),
        Result(name: "HerrWert", results: @["", "XO", "XXO", "XXX", "", "", "",
                ""])]) == @["1: Sergey",
                        "2: Bruce, HerrWert, Jan (tie)"])
