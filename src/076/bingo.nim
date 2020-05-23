proc bingo*(data: seq[int]): string =
    var missing = @[2, 9, 14, 7, 15]
    for c in data:
        if missing.contains(c):
            missing.delete(missing.find(c))
        if len(missing) == 0:
            return "WIN"
    return "LOSE"
