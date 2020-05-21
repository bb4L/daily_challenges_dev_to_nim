import tables

proc twoSum*(numbers: seq[int], goal: int): tuple[idx1: int, idx2: int] =
    let lookup_table = newTable[int, int]()
    for i, n in numbers.pairs:
        if lookup_table.hasKey(goal-n):
            result = (lookup_table.getOrDefault(goal-n, -1), i)
            break
        else:
            lookup_table.add(n, i)
