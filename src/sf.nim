import os, strutils, terminal, strformat


proc checkParams(): bool =
    if paramCount() != 2:
        return false
    try:
        echo parseInt(paramStr(1))
    except ValueError:
        return false
    return true

const testText = """import unittest, NAME

suite "test NAME":
    test "1":
        check(NAME() == true)
"""
const normalText = """
proc NAME*() =
    echo "implement"
"""

proc createFiles(count: string, fileName: string) =
    createDir(count)
    writeFile(joinPath(count, fileName & "_test.nim"), testText.replace(
            "NAME", fileName))
    writeFile(joinPath(count, fileName & ".nim"), normalText.replace("NAME", fileName))


when isMainModule:
    echo "starting... "
    if not checkParams():
        styledEcho fgRed, "Wrong number of arguments or wrong type, expected one number and a string"
        quit(0)

    createFiles(paramStr(1), paramStr(2))

    echo fmt"done for {paramstr(1)} , {paramStr(2)}"
