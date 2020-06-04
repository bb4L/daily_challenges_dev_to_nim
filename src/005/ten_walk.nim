import strutils, math

proc walkGenerator*(time: int): seq[string] =
    if time < 4 or floorMod(time, 2) != 0:
        raise newException(ValueError, "Value has to be even and >4")
    let repeatCount = toInt((toFloat(time) - 4) / 2)
    result = ("n,e," & "e,".repeat(repeatCount) & "s,w" & ",w".repeat(
            repeatCount)).split(',')

when isMainModule:
    echo "4"
    echo walkGenerator(4)
    echo "8"
    echo walkGenerator(8)
