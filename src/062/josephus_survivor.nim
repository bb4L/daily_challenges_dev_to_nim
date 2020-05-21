import sequtils

proc josephus_survivor*(n: int, k: int): int =
    var forty_men = toSeq(1..n)
    var idx = 0

    while len(forty_men) > 1:
        idx = (idx + k-1) mod len(forty_men)
        forty_men.delete(idx)

    forty_men[0]

# implementation could be done better: https://en.wikipedia.org/wiki/Josephus_problem
