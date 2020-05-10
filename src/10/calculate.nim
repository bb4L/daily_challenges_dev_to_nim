import strutils, system


const search_values = @["*", "/", "-","+"]

proc calculate*(data:string):float =
    var tokens = data.split(" ")

    var lookup_idx = 0

    while len(tokens)>1:
        var idx = tokens.find(search_values[lookup_idx])
        while idx > 0:
            var value = 0.0

            if lookup_idx == 0:
                value = parseFloat(tokens[idx-1]) * parseFloat(tokens[idx+1])
            elif lookup_idx == 1:
                value = parseFloat(tokens[idx-1]) / parseFloat(tokens[idx+1])
            elif lookup_idx == 2:
                value = parseFloat(tokens[idx-1]) - parseFloat(tokens[idx+1])
            elif lookup_idx == 3:
                value = parseFloat(tokens[idx-1]) + parseFloat(tokens[idx+1])

            tokens[idx-1] = $(value)
            tokens.del(idx+1)
            tokens.del(idx)

            idx = tokens.find(search_values[lookup_idx])

        if lookup_idx < len(search_values)-1:
            inc(lookup_idx)

    result = parseFloat(tokens[0])