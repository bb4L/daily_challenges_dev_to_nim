import strutils, algorithm, sequtils

proc doLogic(x: string): string =
    if len(x) >= 5:
        result = reversed(x).join("")
    else:
        result = x

proc spinningWords*(inData: string): string =
    var myData = inData.split(" ")
    myData.apply(doLogic)

    result = myData.join(" ")
