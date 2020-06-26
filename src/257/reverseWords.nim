import sequtils, strutils, algorithm

proc reverseWords*(data: string): string =
    result = data.split(" ").map(proc(x: string): string = reversed(x).join(
            "")).join(" ")
