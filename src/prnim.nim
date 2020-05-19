import os, strutils

proc find_files(search_path: string, pattern: string): seq[string] =
    for (kind, path) in walkdir(search_path):
        if kind == pcDir:
            result.add(find_files(path, pattern))
        elif path.endsWith(pattern):
            result.add(path)

when isMainModule:
    echo "starting... "

    let files = find_files(".", ".nim")
    for f in files:
        # echo "file"
        # echo f
        discard execShellCmd("/nim/bin/nimpretty " & f)
