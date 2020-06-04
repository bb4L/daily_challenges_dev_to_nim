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
    var sameValCount = 0
    let upperBound = len(results)
    for u in 1..upperBound:
        if u <= upperBound-1 and result[u-1].points == result[u].points:
            inc(sameValCount)
        elif sameValCount == 0:
            result[u-1].position = u
        else:
            for k in u-sameValCount-1 .. u:
                result[k].position = u-sameValCount
            sameValCount = 0
