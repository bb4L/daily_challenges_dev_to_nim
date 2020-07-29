import algorithm

proc casinorounds*(chips: seq[int]): int =
    let sortedChips = chips.sorted()

    if sortedChips[0] == sortedChips[2]:
        return sortedChips[0] + sortedChips[0] div 2

    elif sortedChips[0] + sortedChips[1] <= sortedChips[2]:
        return sortedChips[0] + sortedChips[1]
    else:
        return (sortedChips[0] + sortedChips[1]-sortedChips[2]) div 2 +
                sortedChips[2]
