import strutils, algorithm

proc sort_last_name(x, y: string): int =
    cmp(x.split(" ")[1], y.split(" ")[1])


proc reindeer*(reindeers: seq[string]): seq[string] =
    result = reindeers
    sort(result, sort_last_name)
