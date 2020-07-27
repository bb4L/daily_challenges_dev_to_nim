import sequtils, algorithm

proc solve*(data: seq[int]): seq[int] =

    return data.reversed().deduplicate().reversed()
