import strutils, math

proc walk_generator*(time: int): seq[string] =
    if time < 4 or floorMod(time, 2) != 0:
        raise newException(ValueError, "Value has to be even and >4")
    let repeat_count = toInt((toFloat(time) - 4) / 2)
    result = ("n,e," & "e,".repeat(repeat_count) & "s,w" & ",w".repeat(
            repeat_count)).split(',')

when isMainModule:
    echo "4"
    echo walk_generator(4)
    echo "8"
    echo walk_generator(8)
