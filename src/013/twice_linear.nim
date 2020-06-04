import algorithm

proc dblLinear*(u: int): int =
    var seqResult = @[1]

    for i in 0..<u:
        let y = 2 * seqResult[i] + 1
        let z = 3 * seqResult[i] + 1

        if not (y in seqResult):
            seqResult.add(y)
        if not (z in seqResult):
            seqResult.add(z)

    seqResult.sort()
    return seqResult[u]
