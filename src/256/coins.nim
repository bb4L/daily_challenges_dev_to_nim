import algorithm

proc coins*(coinValues: seq[int], value: int): int =
    var sortedCoins = coinValues.sorted(order = SortOrder.Descending)
    var count = 0
    var remaining = value

    if value >= sortedCoins[0]:
        count = remaining div sortedCoins[0]
        remaining = remaining - (sortedCoins[0] * count)
    else:
        return coins(sortedCoins[1..len(sortedCoins)-1], value)

    if remaining > 0:
        return min(count + coins(sortedCoins[1..len(sortedCoins)-1], remaining),
                coins(sortedCoins[1..len(sortedCoins)-1], value))
    else:
        return count
