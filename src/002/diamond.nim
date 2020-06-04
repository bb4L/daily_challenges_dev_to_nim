import math, strutils, algorithm

proc diamond*(size: int): string =
    if floorMod(size, 2) == 0 or size < 1:
        result = ""

    elif size == 1:
        result = "*"

    else:
        var lines = newSeq[string]()
        for k in countup(1, size, 2):
            let surround = " ".repeat(int((size-k)/2))
            let actLine = surround & "*".repeat(k) & surround
            lines.add(actLine)

        var l = lines[0..len(lines)-2]
        l.reverse()
        result = lines.join("\n") & "\n" & l.join("\n")

when isMainModule:
    echo "3"
    echo diamond(3)
    echo "5"
    echo diamond(5)
