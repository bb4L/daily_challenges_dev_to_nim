import strutils, strformat, sequtils

proc numberNeigbor*(nums: string): seq[string] =
    let intVal = parseInt(nums)
    @[intVal-1, intVal+1].map(proc(x: int): string = $(x)).map(proc(
            x: string): string = @[x.substr(0, 2), x.substr(3, 5), x.substr(6,
            10)].join("-"))
