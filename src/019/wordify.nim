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
    var strData = $(data)
    var lenToGo = len(strData)

    while lenToGo > 0:
        if lenToGo <= 2:
            if lenToGo == 1:
                acc.add(singulars[parseInt($(strData[0]))])
                break
            let tens = parseInt($(strData[0]))
            let singular = parseInt($(strData[1]))
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
            let val = parseInt($(strData[0]))
            if val > 0:
                acc.add(singulars[parseInt($(val))])
                acc.add(sizes[lenToGo])
        strData = strData.substr(1)
        lenToGo = len(strData)

    result = acc.join(" ")
    result.removeSuffix(' ')
    result.removePrefix(' ')
