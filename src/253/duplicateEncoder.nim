import tables, strutils, sequtils

proc duplicateEncoder*(data: string): string =
    let ct = data.toLower().toCountTable()

    return data.map(proc(c: char): string =
        if ct.getOrDefault(c) == 1:
            return "("
        else:
            return ")"
    ).join("")

