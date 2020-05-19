import strutils, sequtils

proc virus*(text: string): string =
    result = text.toLowerAscii().replace("ie", "ei").split(". ").map(proc(
            x: string): string = x[0].toUpperAscii() & x[1 .. len(x)-1].join(
            "")).join(". ")
