import strutils

proc solve*(s: string): string =
    var lower = 0
    var upper = 0
    var lowerResult = ""
    var upperResult = ""
    
    for c in s:
        if c.isLowerAscii():
            lowerResult.add(c)
            upperResult.add(c.toUpperAscii())
            inc(lower)
        else:
            lowerResult.add(c.toLowerAscii())
            upperResult.add(c)
            inc(upper)

    if lower >= upper:
        return lowerResult

    return upperResult
