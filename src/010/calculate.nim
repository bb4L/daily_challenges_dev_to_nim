import strutils, system


const searchValues = @["*", "/", "-", "+"]

proc calculate*(data: string): float =
    var tokens = data.split(" ")

    var lookupIdx = 0

    while len(tokens) > 1:
        var idx = tokens.find(searchValues[lookupIdx])
        while idx > 0:
            var value = 0.0

            if lookupIdx == 0:
                value = parseFloat(tokens[idx-1]) * parseFloat(tokens[idx+1])
            elif lookupIdx == 1:
                value = parseFloat(tokens[idx-1]) / parseFloat(tokens[idx+1])
            elif lookupIdx == 2:
                value = parseFloat(tokens[idx-1]) - parseFloat(tokens[idx+1])
            elif lookupIdx == 3:
                value = parseFloat(tokens[idx-1]) + parseFloat(tokens[idx+1])

            tokens[idx-1] = $(value)
            tokens.del(idx+1)
            tokens.del(idx)

            idx = tokens.find(searchValues[lookupIdx])

        if lookupIdx < len(searchValues)-1:
            inc(lookupIdx)

    result = parseFloat(tokens[0])
