import strutils

const singulars = ["", "one", "two", "three", "four", "five", "six", "seven",
        "eight", "nine"]
const decens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty",
        "seventy", "eighty", "ninety"]
const teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen",
        "sixteen", "seventeen", "egighteen", "nineteen"]
const sizes = ["", "", "", "hundred", "thousand", "million", "billion",
        "trillion", "quadrillion", "quintillion", "sixtillion", "septillion"]

proc wordify*(data: int): string =
    var acc = newSeq[string]()
    var str_data = $(data)
    var len_to_go = len(str_data)

    while len_to_go > 0:
        if len_to_go <= 2:
            if len_to_go == 1:
                acc.add(singulars[parseInt($(str_data[0]))])
                break
            let tens = parseInt($(str_data[0]))
            let singular = parseInt($(str_data[1]))
            if tens >= 1:
                if tens == 1:
                    if singular != 0:
                        acc.add(teens[singular])
                else:
                    acc.add(decens[tens])
                    acc.add(singulars[singular])
            else:
                acc.add(singulars[singular])
            break
        else:
            let val = parseInt($(str_data[0]))
            if val > 0:
                acc.add(singulars[parseInt($(val))])
                acc.add(sizes[len_to_go])
        str_data = str_data.substr(1)
        len_to_go = len(str_data)

    result = acc.join(" ")
    result.removeSuffix(' ')
    result.removePrefix(' ')
