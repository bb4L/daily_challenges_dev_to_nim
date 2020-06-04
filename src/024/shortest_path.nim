proc shortestPath*(data: int): int =
    var n = data
    while n > 1:
        if n mod 2 == 0:
            n = n div 2
        else:
            dec(n)
        inc(result)
