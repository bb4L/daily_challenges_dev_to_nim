import tables

proc twoSum*(numbers: seq[int], goal: int): tuple[idx1: int, idx2: int] =
    let lookupTable = newTable[int, int]()
    for i, n in numbers.pairs:
        if lookupTable.hasKey(goal-n):
            result = (lookupTable.getOrDefault(goal-n, -1), i)
            break
        else:
            lookupTable.add(n, i)
