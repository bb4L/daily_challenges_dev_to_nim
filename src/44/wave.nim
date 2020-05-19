import strutils

proc wave*(w: string): seq[string] =
    for idx, c in w.pairs:
        if c in Whitespace:
            continue
        else:
            result.add(w.substr(0, idx-1) & c.toUpperAscii() & w.substr(idx+1))
