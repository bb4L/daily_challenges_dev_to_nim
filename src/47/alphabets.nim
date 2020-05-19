import strutils, sequtils

proc alphabets*(data: string): string =
    data.filter(isAlphaAscii).map(proc(c: char): string = $(Letters.find(
            toUpperAscii(c))+1)).join(" ")
