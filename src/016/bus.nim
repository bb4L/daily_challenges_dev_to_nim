import sequtils

type
    BusStop = tuple
        leaving: int
        entering: int

proc getPeopleInBus*(data: seq[BusStop]): int =
    result = data.foldl(a - b.leaving + b.entering, 0)
