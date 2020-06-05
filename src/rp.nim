import os, strutils,  terminal

proc runTest(name: string): int =
    return execShellCmd("nim c -r --hints:off " & name)

proc handleFile(path:string): int =
    if path.endsWith(".nim"):
            discard execShellCmd("/nim/bin/nimpretty " & path)
            if path.endsWith("_test.nim") or path.endsWith("Test.nim"):
                return runTest(path)
            else:
                return 0

when isMainModule:
    if paramCount() == 0:
        var failures = 0
        var failedSuites = newSeq[string]()
        for kind, path in walkDir(getCurrentDir()):
            if kind == pcDir:
                setCurrentDir(path)
                for kind, path in walkDir(path):
                    let code = handleFile(path)
                    if code != 0:
                        inc(failures)
                        failedSuites.add(path)
        if failures == 0:
            styledEcho fgGreen, "All suites passed!"
        else:
            styledEcho fgRed, $(failures) & " Testsuites failed"
            echo failedSuites.join("\n")

    elif paramCount() == 1:
        for kind, path in walkdir(paramStr(1)):
            discard handleFile(path)


    else:
        echo "Not correct input, need one number"
        quit(0)