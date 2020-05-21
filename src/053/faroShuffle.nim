proc faroShuffle*(data: seq[string]): seq[string] =
    let size = len(data)
    if size mod 2 != 0:
        return @[]

    for i in 0 .. (size div 2)-1:
        result.add(data[i])
        result.add(data[i+(size div 2)])
