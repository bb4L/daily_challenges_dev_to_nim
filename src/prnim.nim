import os, strutils

proc findFiles(searchPath: string, pattern: string): seq[string] =
    for (kind, path) in walkdir(searchPath):
        if kind == pcDir:
            result.add(findFiles(path, pattern))
        elif path.endsWith(pattern):
            result.add(path)

when isMainModule:
    echo "starting... "

    let files = findFiles(".", ".nim")
    for f in files:
        discard execShellCmd("/nim/bin/nimpretty " & f)
