import strutils, sequtils, algorithm

proc nameSwap*(data: string): string =
    result = data.split(" ").filter(proc (x: string): bool = len(x) >
            1).reversed().join(" ")
