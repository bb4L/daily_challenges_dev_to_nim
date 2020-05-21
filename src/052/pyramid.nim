import strutils, sequtils

proc one_line(x: int, tot: int): string =
        let outer = " ".repeat(tot-x)
        return outer & "*".repeat(1+2*x) & outer


proc pyramid*(rows: int): string =
        let tot = ((rows-1)*2 + 1) div 2
        toSeq(0 .. rows-1).map(proc(x: int): string = one_line(x, tot)).join("\n")
