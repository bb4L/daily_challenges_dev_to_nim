import strutils, math

proc ipsBetween*(startIp:string, endIp:string) : int = 
    let startVals = startIp.split(".")
    let endVals = endIp.split(".")
    for i in 0..3:
        result += (parseInt(endVals[i])-parseInt(startVals[i])) * 256^(3-i)
