import math

proc cola*(people:seq[string], n:int):string = 
    var count = len(people)
    var iteration = 0
    var remainder = n-count
    var last_diff = count

    while count < n:
        last_diff = 2*last_diff
        count += last_diff
        remainder -= last_diff
        inc(iteration)
    var idx = n

    if iteration > 0:
        idx = toInt(round((last_diff+remainder) / toInt(pow(2.0,toFloat(iteration)))))

    result = people[idx-1]