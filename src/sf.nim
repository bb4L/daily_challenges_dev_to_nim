import os, strutils, terminal, strformat


proc check_params(): bool =
    if paramCount() != 2:
        return false
    try:
        echo parseInt(paramStr(1))
    except ValueError:
        return false
    return true

const test_text = """import unittest, NAME

suite "test NAME":
    test "1":
        check(NAME() == true)
"""
const normal_text = """
proc NAME*() =
    echo "implement"
"""

proc create_files(count: string, file_name: string) =
    createDir(count)
    writeFile(joinPath(count, file_name & "_test.nim"), test_text.replace(
            "NAME", file_name))
    writeFile(joinPath(count, file_name & ".nim"), normal_text.replace("NAME", file_name))


when isMainModule:
    echo "starting... "
    if not check_params():
        styledEcho fgRed, "Wrong number of arguments or wrong type, expected one number and a string"
        quit(0)

    create_files(paramStr(1), paramStr(2))

    echo fmt"done for {paramstr(1)} , {paramStr(2)}"
