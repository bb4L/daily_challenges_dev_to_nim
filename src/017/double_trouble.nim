import math

proc cola*(people: seq[string], n: int): string =
    var count = len(people)
    var iteration = 0
    var remainder = n-count
    var lastDiff = count

    while count < n:
        lastDiff = 2*lastDiff
        count += lastDiff
        remainder -= lastDiff
        inc(iteration)
    var idx = n

    if iteration > 0:
        idx = toInt(round((lastDiff+remainder) / toInt(pow(2.0, toFloat(iteration)))))

    result = people[idx-1]
