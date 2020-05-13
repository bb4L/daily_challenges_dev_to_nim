import strutils, sequtils

proc reverse_words(x: string): string =
    let last_idx = len(x)-1
    if x[last_idx].isAlphaAscii():
        result = x[1..last_idx] & $(x[0]) & "ay"
    else:
        if last_idx > 0:
            result = x[1..last_idx-1] & x[0] & "ay" & x[last_idx]
        else:
            result = x

proc unpig_map(data:string): string =
    var x = data.replace("ay")
    let last_idx = len(x)-1
    if x[last_idx].isAlphaAscii():
        result = x[last_idx] & x[0..last_idx-1]
    else:
        if last_idx > 0:
            result =  x[last_idx] & x[0..last_idx-2]
        else:
            result = x

proc pigit*(data:string):string = 
    result = data.splitWhitespace().map(reverse_words).join(" ")

proc unpig*(data:string):string =
    result = data.splitWhitespace().map(unpig_map).join(" ")