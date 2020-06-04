proc findOutlier*(data: seq[int]): int =
    var firstVal = data[0] mod 2
    var secondVal = data[1] mod 2
    if firstVal != secondVal:
        if secondVal == data[2] mod 2:
            return data[0]
        else:
            return data[1]
    for i in data:
        if i mod 2 != firstVal:
            return i
