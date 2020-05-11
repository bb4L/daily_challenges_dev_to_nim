import math, algorithm


proc find_seq(remainder:int, existing:seq[int]): seq[int]=
    var old_result = existing
    var next_try = min(existing)-1

    result = @[]
    if next_try < 1:
        return @[]
    
    while len(result)==0:
        if remainder >= next_try*next_try:
            old_result.add(next_try)
            let new_remainder = remainder - (next_try*next_try)
           
            if new_remainder > 0:
                result = find_seq(new_remainder, old_result)
            else:
                result = old_result
           
            if len(result)==0:
                old_result.del(len(old_result)-1)
            else:
                break
        dec(next_try)
        if next_try < 1:
            break

proc decompose*(square:int): seq[int]=
    result = newSeq[int]()

    let goal = pow(toFloat(square),2)
    var start_value = square-1

    while len(result)==0 and start_value>2:
        result = find_seq(toInt(goal - pow(toFloat(start_value),2)), @[start_value])
        dec(start_value)
    
    result.sort()