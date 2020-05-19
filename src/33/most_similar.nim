import sequtils, tables, strutils

# Levenshtein might have been a better comparison of the words.... https://en.wikipedia.org/wiki/Levenshtein_distance

proc most_similar*(language: seq[string], search_term: string): string =
    let lookup_tables = language.map(proc(x: string): CountTable[
            char] = toCountTable(x.toLower()))
    let search_lookup = toCountTable(search_term.toLower())

    var min_diff = 10*len(search_lookup)
    var idx = 0

    for i in 0 .. len(lookup_tables)-1:
        var search_val = search_lookup
        var curr_diff = 0
        for k, v in lookup_tables[i].pairs:
            curr_diff += abs(v - search_val.getOrDefault(k, 0))
            search_val.del(k)

        for v in search_val.values:
            curr_diff += v

        if curr_diff < min_diff:
            idx = i
            min_diff = curr_diff

    result = language[idx]
