import strutils, strformat, sequtils

proc number_neigbor*(nums:string): seq[string] =
    let int_val = parseInt(nums)
    @[int_val-1 , int_val+1].map(proc(x:int):string = $(x)).map(proc(x:string):string= @[x.substr(0,2), x.substr(3,5), x.substr(6, 10)].join("-"))
