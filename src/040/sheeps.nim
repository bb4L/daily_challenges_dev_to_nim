import sequtils, strformat, strutils

proc sheeps*(maxSheep: int): string =
    return toSeq(1..maxSheep).map(proc(
            x: int): string = fmt"{x} sheep...").join("")
