import sequtils, strformat, strutils

proc sheeps*(max_sheep: int): string =
    return toSeq(1..max_sheep).map(proc(
            x: int): string = fmt"{x} sheep...").join("")
