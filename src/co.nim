import os, strutils,  terminal

when isMainModule:
    if paramCount() != 1:
        styledEcho fgRed, "Exactly 1 argument is needed"
        quit(0)
    
    else:
        let s = paramStr(1)
        if len(s)!=3:
            styledEcho fgRed, "Argument has to be 3-digits, with zero padding"
            quit(0)
        else:
            for c in s:
                if not isDigit(c):
                    styledEcho fgRed, "Argument is not digits only"
                    quit(0)

            
            discard execShellCmd("git add " & s)
            let res =  execShellCmd("git co -b feat/" & s)
            if res == 0:
                discard execShellCmd("git cim \"Add solution for " & s & "\"")
                discard execShellCmd("git push -u origin feat/" & s)


            # let k = parseInt(s)
            # echo "K"
            # echo k