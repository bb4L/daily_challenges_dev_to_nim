proc checkDocuments*(filename1: string, filename2: string): bool =
    var lines_from2 = newSeq[string]()
    for line in lines filename2:
        lines_from2.add(line.string)

    var idx = 0
    for line in lines filename1:
        if idx > len(lines_from2) or len(line) != len(lines_from2[idx]):
            return false

        var c_count = 0
        for c in line:
            if c != 'X' and c != lines_from2[idx][c_count]:
                return false
            inc(c_count)

        inc(idx)

    if len(lines_from2) != idx:
        return false

    result = true
