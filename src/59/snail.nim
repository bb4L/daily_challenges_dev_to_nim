import algorithm

proc snail*(data: seq[seq[int]]): seq[int] =
    result.add(data[0])

    let sub_len = len(data[0])

    if sub_len <= 1:
        return result

    var remaining_data = newSeq[seq[int]]()
    var rev_data = newSeq[int]()

    for i in 1 .. len(data)-2:
        rev_data.add(data[i][0])
        result.add(data[i][sub_len-1])
        remaining_data.add(data[i][1..sub_len-2])

    result.add(reversed(data[len(data)-1]))
    result.add(reversed(rev_data))

    if len(remaining_data) > 0:
        result.add(snail(remaining_data))
