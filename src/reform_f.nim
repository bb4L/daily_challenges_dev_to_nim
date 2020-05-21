import os, strutils

when isMainModule:
    echo "starting... "

    for kind, path in walkDir("./"):
        echo path.splitPath().tail
        let split_path = path.splitPath()
        let number_in_dir = split_path.tail
        let name_len = len(number_in_dir)
        if name_len < 3:
            echo "0".repeat(3-name_len) & number_in_dir
            echo joinPath(split_path.head, "0".repeat(3-name_len) & number_in_dir)
            moveDir(path, joinPath(split_path.head, "0".repeat(3-name_len) &
                    number_in_dir))
