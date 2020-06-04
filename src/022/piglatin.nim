import strutils, sequtils

proc reverseWords(x: string): string =
    let lastIdx = len(x)-1
    if x[lastIdx].isAlphaAscii():
        result = x[1..lastIdx] & $(x[0]) & "ay"
    else:
        if lastIdx > 0:
            result = x[1..lastIdx-1] & x[0] & "ay" & x[lastIdx]
        else:
            result = x

proc unpigMap(data: string): string =
    var x = data.replace("ay")
    let lastIdx = len(x)-1
    if x[lastIdx].isAlphaAscii():
        result = x[lastIdx] & x[0..lastIdx-1]
    else:
        if lastIdx > 0:
            result = x[lastIdx] & x[0..lastIdx-2]
        else:
            result = x

proc pigit*(data: string): string =
    result = data.splitWhitespace().map(reverseWords).join(" ")

proc unpig*(data: string): string =
    result = data.splitWhitespace().map(unpigMap).join(" ")
