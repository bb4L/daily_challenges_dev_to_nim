import os, strutils

proc run_test(name: string) =
    var code = execShellCmd("nim c -r --hints:off " & name)
    echo "result code: " & $(code)


when isMainModule:
    if paramCount() != 1:
        echo "Not correct input, need one number"
        quit(0)

    for kind, path in walkdir(paramStr(1)):
        if path.endsWith(".nim"):
            discard execShellCmd("/nim/bin/nimpretty " & path)
            if path.endsWith("_test.nim"):
                run_test(path)
