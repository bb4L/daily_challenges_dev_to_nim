import sequtils, tables, strutils

# Levenshtein might have been a better comparison of the words.... https://en.wikipedia.org/wiki/Levenshtein_distance

proc mostSimilar*(language: seq[string], searchTerm: string): string =
    let lookupTables = language.map(proc(x: string): CountTable[
            char] = toCountTable(x.toLower()))
    let searchLookup = toCountTable(searchTerm.toLower())

    var minDiff = 10*len(searchLookup)
    var idx = 0

    for i in 0 .. len(lookupTables)-1:
        var searchVal = searchLookup
        var currDiff = 0
        for k, v in lookupTables[i].pairs:
            currDiff += abs(v - searchVal.getOrDefault(k, 0))
            searchVal.del(k)

        for v in searchVal.values:
            currDiff += v

        if currDiff < minDiff:
            idx = i
            minDiff = currDiff

    result = language[idx]
