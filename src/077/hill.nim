import strutils

proc hill*(mountains: seq[string]): int =
    result = 0

    var processedMountains = mountains
    var gotUncounted = true
    var maxIdx = len(processedMountains)-1
    let maxLen = len(processedMountains[0])

    while gotUncounted:
        gotUncounted = false
        var tmpSeq = newSeq[string]()

        for idx, value in processedMountains.pairs:
            if idx > 0 and idx < maxIdx:
                var tmpVal = newSeq[char]()
                for id, c in value.pairs:
                    if c == '^':
                        # check if value can be "eroded"
                        if (id > 0 and processedMountains[idx][id-1] !=
                                    '^') or
                            ( (id < maxLen-1) and processedMountains[idx][
                                    id+1] != '^') or
                            (idx > 0 and idx < maxIdx and processedMountains[
                                    idx+1][id] != '^') or
                                (idx > 0 and idx < maxIdx and
                                        processedMountains[idx-1][id] != '^'):
                            tmpVal.add(' ')
                        else:
                            tmpVal.add('^')
                            gotUncounted = true
                    else:
                        tmpVal.add(c)
                tmpSeq.add(tmpVal.join(""))
        processedMountains = tmpSeq
        maxIdx -= 2 # first and last line can allways be removed
        inc(result)
