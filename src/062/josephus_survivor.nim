import sequtils

proc josephusSurvivor*(n: int, k: int): int =
    var fortyMen = toSeq(1..n)
    var idx = 0

    while len(fortyMen) > 1:
        idx = (idx + k-1) mod len(fortyMen)
        fortyMen.delete(idx)

    fortyMen[0]

# implementation could be done better: https://en.wikipedia.org/wiki/Josephus_problem
