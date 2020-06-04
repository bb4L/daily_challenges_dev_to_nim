import algorithm

proc snail*(data: seq[seq[int]]): seq[int] =
    result.add(data[0])

    let subLen = len(data[0])

    if subLen <= 1:
        return result

    var remainingData = newSeq[seq[int]]()
    var revData = newSeq[int]()

    for i in 1 .. len(data)-2:
        revData.add(data[i][0])
        result.add(data[i][subLen-1])
        remainingData.add(data[i][1..subLen-2])

    result.add(reversed(data[len(data)-1]))
    result.add(reversed(revData))

    if len(remainingData) > 0:
        result.add(snail(remainingData))
