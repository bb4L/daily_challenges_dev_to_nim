proc cubes*(complete: int64): int64 =
    # because of int64 there is no better solution possible, no casting to float64
    var total = 0
    var n = 0
    while total < complete:
        inc(n)
        total += n * n * n

    if total == complete:
        result = n
    else:
        result = 0
