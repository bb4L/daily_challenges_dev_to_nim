proc smaller*(data: seq[int]): seq[int] =
    result = newSeq[int](len(data))
    for i, x in data.pairs():
        for y in data[i..(len(data)-1)]:
            if y < x:
                inc(result[i])
