proc checkDocuments*(filename1: string, filename2: string): bool =
    var linesFrom2 = newSeq[string]()
    for line in lines filename2:
        linesFrom2.add(line.string)

    var idx = 0
    for line in lines filename1:
        if idx > len(linesFrom2) or len(line) != len(linesFrom2[idx]):
            return false

        var cCount = 0
        for c in line:
            if c != 'X' and c != linesFrom2[idx][cCount]:
                return false
            inc(cCount)

        inc(idx)

    if len(linesFrom2) != idx:
        return false

    result = true
