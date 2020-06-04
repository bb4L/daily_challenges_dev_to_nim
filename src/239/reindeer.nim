import strutils, algorithm

proc sortLastName(x, y: string): int =
    cmp(x.split(" ")[1], y.split(" ")[1])


proc reindeer*(reindeers: seq[string]): seq[string] =
    result = reindeers
    sort(result, sortLastName)
