import re, strutils

proc money_value*(data_orig: string): float =
    let data = data_orig.replace("$", " ")
    let a = data.findBounds(re"[-]?[' ']*\d+[.]?\d*")
    let b = data.findBounds(re"[-]?[' ']*\d*[.]\d+")
    result = 0.0
    if a[1] != -1:
        if b[1] != -1 and b[1]-b[0] >= a[1]-a[0]:
            try:
                result = parseFloat(data.substr(b[0], b[1]).replace(" ", ""))
            except ValueError:
                result = parseFloat('0' & data.substr(b[0], b[1]).replace(
                    " ", ""))
        else:
            result = parseFloat(data.substr(a[0], a[1]))
