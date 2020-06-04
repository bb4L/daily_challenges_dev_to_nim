import os, strutils

when isMainModule:
    echo "starting... "

    for kind, path in walkDir("./"):
        echo path.splitPath().tail
        let splitPath = path.splitPath()
        let numberInDir = splitPath.tail
        let nameLen = len(numberInDir)
        if nameLen < 3:
            echo "0".repeat(3-nameLen) & numberInDir
            echo joinPath(splitPath.head, "0".repeat(3-nameLen) & numberInDir)
            moveDir(path, joinPath(splitPath.head, "0".repeat(3-nameLen) &
                    numberInDir))
