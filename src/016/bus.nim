import sequtils

type
    BusStop = tuple
        leaving: int
        entering: int

proc get_people_in_bus*(data: seq[BusStop]): int =
    result = data.foldl(a - b.leaving + b.entering, 0)
