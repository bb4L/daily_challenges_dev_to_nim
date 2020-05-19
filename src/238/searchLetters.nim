import tables, strutils, sequtils

proc searchLetters*(data:string):string =
    let counts = data.toLowerAscii().toCountTable()

    toSeq('a'..'z').map(proc(c:char):char =
        if counts.getOrDefault(c,0) > 0:
            '1'
        else:
            '0'
     ).join("")
            