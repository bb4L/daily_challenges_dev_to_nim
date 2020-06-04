import strutils

proc phoneNumber(numbers: seq[int]): string =
    if len(numbers) < 10:
        raise newException(ValueError, "Less than 10 digits provided")
    result = "(" & numbers[0..2].join("") & ") " & numbers[3..6].join("") &
            "-" & numbers[6..9].join("")

when isMainModule:
    echo ""
    echo phoneNumber(@[1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
