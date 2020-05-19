import algorithm

proc dbl_linear*(u: int): int =
    var seq_result = @[1]

    for i in 0..<u:
        let y = 2 * seq_result[i] + 1
        let z = 3 * seq_result[i] + 1

        if not (y in seq_result):
            seq_result.add(y)
        if not (z in seq_result):
            seq_result.add(z)

    seq_result.sort()
    return seq_result[u]
