import sequtils, strutils, algorithm

type
    Result* = ref object of RootObj
        name*: string
        results*: seq[string]

    Stats = ref object of Result
        max_height*: int
        total_missed*: int
        tied*: bool

proc jumps*(results: seq[Result]): seq[string] =

    let statistics = results.map(proc(x: Result): Stats =
        var m_height = 0
        let total_len = x.results.len()
        for k in 1 .. x.results.len():
            let i = total_len - k

            if x.results[i].contains('O'):
                m_height = i
                break

        Stats(name: x.name, results: x.results, max_height: m_height,
                total_missed: x.results.join("").count('X'), tied: false)

    ).sorted(proc(x, y: Stats): int =
        if x.max_height != y.max_height:
            cmp(y.max_height, x.max_height)
        else:
            if x.results[x.max_height].len() != y.results[y.max_height].len():
                cmp(x.results[x.max_height].len(), y.results[y.max_height].len())
            else:
                if x.total_missed == y.total_missed:
                    x.tied = true
                    y.tied = true
                    cmp(x.name, y.name)
                else:
                    cmp(x.total_missed, y.total_missed)
    )

    var place = 0
    var actual_tied = false
    var same_place = 0
    result = newSeq[string]()
    var result_idx = 0

    for i, stats in statistics.pairs():
        if len(result) <= result_idx:
            result.add($(place+1)&":")
            result[result_idx].add(" " & stats.name)

        if len(statistics) > i+1:
            let next_stat = statistics[i+1]

            if stats.tied and next_stat.tied and next_stat.max_height ==
                    stats.max_height and stats.results[stats.max_height].len(
                ) ==
                next_stat.results[next_stat.max_height].len() and
                stats.total_missed == next_stat.total_missed:
                if actual_tied:
                    result[result_idx].add(stats.name)
                actual_tied = true
                result[result_idx].add(", ")
                inc(same_place)

            elif actual_tied:
                actual_tied = false
                result[result_idx].add(stats.name)
                if place == 0:
                    result[result_idx].add(" (jump-off)")
                else:
                    result[result_idx].add(" (tie)")

                place += same_place+1
                inc(result_idx)
                same_place = 0
            else:
                inc(result_idx)
                inc(place)
        else:

            if actual_tied:
                result[result_idx].add(stats.name)

                if place == 0:
                    result[result_idx].add(" (jump-off)")
                else:
                    result[result_idx].add(" (tie)")
                place += same_place + 1

            break

        if place > 2:
            break
