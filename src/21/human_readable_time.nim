import strutils

const SINGULARS = @["second", "minute", "hour", "day", "year"]
const PLURALS = @["seconds", "minutes", "hours", "days", "years"]
const DIVISORS = @[60, 60, 24, 365]


proc human_readable*(seconds: int): string =
    var string_data = newSeq[string]()
    var amount_left = seconds

    for count in 0..3:
        if amount_left mod DIVISORS[count] > 0:
            var val = amount_left mod DIVISORS[count]
            if val > 1:
                string_data.insert(val.intToStr() & " " & PLURALS[count])
            else:
                string_data.insert(val.intToStr() & " " & SINGULARS[count])
        amount_left = amount_left div DIVISORS[count]

    if amount_left == 1:
        string_data.insert(amount_left.intToStr() & " " & SINGULARS[4])
    elif amount_left > 1:
        string_data.insert(amount_left.intToStr() & " " & PLURALS[4])
        amount_left = 0


    if len(string_data) > 1:
        result = string_data[0 .. len(string_data)-2].join(", ") & " and " &
                string_data[len(string_data)-1]
    else:
        result = string_data[0]
