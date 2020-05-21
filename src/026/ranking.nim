import algorithm, sequtils

type
    User = tuple
        name: string
        points: int

    OutputUser = tuple
        name: string
        points: int
        position: int

proc UsersCmp(x, y: User): int =
    if x.points == y.points:
        return system.cmp(x.name, y.name)
    else:
        return system.cmp(y.points, x.points)

proc ranking*(results: seq[User]): seq[OutputUser] =
    result = results.sorted(UsersCmp).map(proc(x: User): OutputUser = (
            name: x.name, points: x.points, position: 0))
    var same_val_count = 0
    let upper_bound = len(results)
    for u in 1..upper_bound:
        if u <= upper_bound-1 and result[u-1].points == result[u].points:
            inc(same_val_count)
        elif same_val_count == 0:
            result[u-1].position = u
        else:
            for k in u-same_val_count-1 .. u:
                result[k].position = u-same_val_count
            same_val_count = 0
