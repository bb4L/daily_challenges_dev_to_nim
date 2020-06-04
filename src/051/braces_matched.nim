proc bracesMatched*(data: string): bool =
    var open = 0
    for c in data:
        if c == '{':
            inc(open)
        elif c == '}':
            dec(open)
            if open < 0:
                return false
    return open == 0
