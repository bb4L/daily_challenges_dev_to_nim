
proc equalSides*(s: seq[int]): int =
    result = -1

    var l_sum = newSeq[int]()
    l_sum.add(s[0])

    for i, n in s[1..len(s)-1].pairs():
        l_sum.add(l_sum[i]+n)

    var sum = s[len(s)-1]

    for i in countdown(len(s)-2, 1):
        if sum == l_sum[i-1]:
            return i
        sum += s[i]
