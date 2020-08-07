
type
    ReturnData* = object
        i*, n*: int

proc allNonConsecutive*(data: seq[int]): seq[ReturnData] =
    for i, n in data[ .. (data.len-2)].pairs:
        if n + 1 != data[i+1]:
            result.add(ReturnData(n: data[i+1], i: i+1))
