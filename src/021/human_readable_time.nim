import strutils

const SINGULARS = @["second", "minute", "hour", "day", "year"]
const PLURALS = @["seconds", "minutes", "hours", "days", "years"]
const DIVISORS = @[60, 60, 24, 365]


proc humanReadable*(seconds: int): string =
    var stringData = newSeq[string]()
    var amountLeft = seconds

    for count in 0..3:
        if amountLeft mod DIVISORS[count] > 0:
            var val = amountLeft mod DIVISORS[count]
            if val > 1:
                stringData.insert(val.intToStr() & " " & PLURALS[count])
            else:
                stringData.insert(val.intToStr() & " " & SINGULARS[count])
        amountLeft = amountLeft div DIVISORS[count]

    if amountLeft == 1:
        stringData.insert(amountLeft.intToStr() & " " & SINGULARS[4])
    elif amountLeft > 1:
        stringData.insert(amountLeft.intToStr() & " " & PLURALS[4])
        amountLeft = 0


    if len(stringData) > 1:
        result = stringData[0 .. len(stringData)-2].join(", ") & " and " &
                stringData[len(stringData)-1]
    else:
        result = stringData[0]
