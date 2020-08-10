import strutils, sequtils

type
    Sandpile* = array[0..2, array[0..2, int]]


proc newIteration(p: Sandpile): (Sandpile, bool) =
    var pNew: Sandpile
    var anyToBig = false
    for i in countup(0, 2):
        for j in countup(0, 2):
            if p[i][j] > 3:
                if i > 0:
                    pNew[i-1][j]+=1
                    if not anyToBig and pNew[i-1][j] > 3:
                        anyToBig = true
                if j > 0:
                    pNew[i][j-1]+=1
                    if not anyToBig and pNew[i][j-1] > 3:
                        anyToBig = true
                if i < 2:
                    pNew[i+1][j]+=1
                    if not anyToBig and pNew[i+1][j] > 3:
                        anyToBig = true
                if j < 2:
                    pNew[i][j+1]+=1
                    if not anyToBig and pNew[i][j+1] > 3:
                        anyToBig = true

                pNew[i][j] += p[i][j] - 4

            else:
                pNew[i][j] += p[i][j]

            if not anyToBig and pNew[i][j] > 3:
                anyToBig = true
    return (pNew, anyToBig)

proc createSandpile*(data: string): Sandpile =
    var p: Sandpile
    var lineNumber = 0
    var anyToBig = false
    for line in splitLines(data):
        var count = 0
        for v in toSeq(line.items):
            p[lineNumber][count] = parseInt($v)
            if not anyToBig and p[lineNumber][count] > 3:
                anyToBig = true
            inc(count)
        inc(lineNumber)

    while anyToBig:
        (p, anyToBig) = newIteration(p)

    return p



proc `+`*(a, b: Sandpile): Sandpile =
    var p: Sandpile
    var oneBiggerThan3 = false
    for i in countup(0, 2):
        for j in countup(0, 2):
            p[i][j] = a[i][j] + b[i][j]

            if not oneBiggerThan3 and p[i][j] > 3:
                oneBiggerThan3 = true

    while oneBiggerThan3:
        (p, oneBiggerThan3) = newIteration(p)

    return p
