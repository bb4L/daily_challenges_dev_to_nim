import sequtils, math, strutils

proc waterbombs*(ground: string, bombLength: int): int =
    return ground.split("Y").foldl(a+ceil(len(b)/bombLength).toInt(), 0)
