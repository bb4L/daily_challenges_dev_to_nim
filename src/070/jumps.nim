import sequtils, strutils, algorithm

type
    Result* = ref object of RootObj
        name*: string
        results*: seq[string]

    Stats = ref object of Result
        maxHeight*: int
        totalMissed*: int
        tied*: bool

proc jumps*(results: seq[Result]): seq[string] =

    let statistics = results.map(proc(x: Result): Stats =
        var mHeight = 0
        let totalLen = x.results.len()
        for k in 1 .. x.results.len():
            let i = totalLen - k

            if x.results[i].contains('O'):
                mHeight = i
                break

        Stats(name: x.name, results: x.results, maxHeight: mHeight,
                totalMissed: x.results.join("").count('X'), tied: false)

    ).sorted(proc(x, y: Stats): int =
        if x.maxHeight != y.maxHeight:
            cmp(y.maxHeight, x.maxHeight)
        else:
            if x.results[x.maxHeight].len() != y.results[y.maxHeight].len():
                cmp(x.results[x.maxHeight].len(), y.results[y.maxHeight].len())
            else:
                if x.totalMissed == y.totalMissed:
                    x.tied = true
                    y.tied = true
                    cmp(x.name, y.name)
                else:
                    cmp(x.totalMissed, y.totalMissed)
    )

    var place = 0
    var actualTied = false
    var samePlace = 0
    result = newSeq[string]()
    var resultIdx = 0

    for i, stats in statistics.pairs():
        if len(result) <= resultIdx:
            result.add($(place+1)&":")
            result[resultIdx].add(" " & stats.name)

        if len(statistics) > i+1:
            let nextStat = statistics[i+1]

            if stats.tied and nextStat.tied and nextStat.maxHeight ==
                    stats.maxHeight and stats.results[stats.maxHeight].len(
                ) ==
                nextStat.results[nextStat.maxHeight].len() and
                stats.totalMissed == nextStat.totalMissed:
                if actualTied:
                    result[resultIdx].add(stats.name)
                actualTied = true
                result[resultIdx].add(", ")
                inc(samePlace)

            elif actualTied:
                actualTied = false
                result[resultIdx].add(stats.name)
                if place == 0:
                    result[resultIdx].add(" (jump-off)")
                else:
                    result[resultIdx].add(" (tie)")

                place += samePlace+1
                inc(resultIdx)
                samePlace = 0
            else:
                inc(resultIdx)
                inc(place)
        else:

            if actualTied:
                result[resultIdx].add(stats.name)

                if place == 0:
                    result[resultIdx].add(" (jump-off)")
                else:
                    result[resultIdx].add(" (tie)")
                place += samePlace + 1

            break

        if place > 2:
            break
