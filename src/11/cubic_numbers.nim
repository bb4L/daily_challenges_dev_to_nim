import strutils, sequtils, math

proc is_cubic*(value:int):bool=
    if value > 999:
        return false

    var sum_of_numbers = 0.0
    for c in $(value):
        sum_of_numbers += pow(parseFloat($(c)),3)
    result = toInt(sum_of_numbers)==value

proc find_numbers(data:string):seq[int] =
    var curr_ints = newSeq[string]()

    for c in data:
        if c.isDigit():
            curr_ints.add($(c))
            result.add(parseInt($(c)))
            if len(curr_ints)==3:
                result.add(parseInt(curr_ints[0] & curr_ints[1] & curr_ints[2]))
                curr_ints.delete(0)
            elif len(curr_ints)==2:
                result.add(parseInt(curr_ints[0] & curr_ints[1]))
        else:
            curr_ints = @[]

    result = deduplicate(result)

proc find_cubics*(data:string):string =
    let numbers = find_numbers(data)
    let cubic_numbers = numbers.filter(is_cubic)

    if len(cubic_numbers)>0:
        result = cubic_numbers.join(" ")
    else:
        result = "Unlucky"


