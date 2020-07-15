import strutils

proc swapping*(s1: string, s_input: string): int =
    result = 0

    var s2 = s_input

    for i, c in s1.pairs():
        let idx = s2.find(c)

        if idx == -1:
            return -1

        s2 = s2[0..idx-1] & s2[idx+1..len(s2)-1]
        result += idx
