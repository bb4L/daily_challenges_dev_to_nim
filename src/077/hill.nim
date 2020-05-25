import strutils

proc hill*(mountains: seq[string]): int =
    result = 0

    var processed_mountains = mountains
    var got_uncounted = true
    var max_idx = len(processed_mountains)-1
    let max_len = len(processed_mountains[0])

    while got_uncounted:
        got_uncounted = false
        var tmpSeq = newSeq[string]()

        for idx, value in processed_mountains.pairs:
            if idx > 0 and idx < max_idx:
                var tmp_val = newSeq[char]()
                for id, c in value.pairs:
                    if c == '^':
                        # check if value can be "eroded"
                        if (id > 0 and processed_mountains[idx][id-1] !=
                                    '^') or
                            ( (id < max_len-1) and processed_mountains[idx][
                                    id+1] != '^') or
                            (idx > 0 and idx < max_idx and processed_mountains[
                                    idx+1][id] != '^') or
                                (idx > 0 and idx < max_idx and
                                        processed_mountains[idx-1][id] != '^'):
                            tmp_val.add(' ')
                        else:
                            tmp_val.add('^')
                            got_uncounted = true
                    else:
                        tmp_val.add(c)
                tmpSeq.add(tmp_val.join(""))
        processed_mountains = tmpSeq
        max_idx -= 2 # first and last line can allways be removed
        inc(result)
