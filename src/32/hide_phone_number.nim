import re

const Languages* = @["USA", "CH"]
const ReplaceFrom* = @[4,7]
const ReplacePattern* = @["xx-xxxx","xx xx"]
const NumberFormat* = @[  r"\d{3}\-\d{3}\-\d{4}", r"\d{3} \d{3} \d{2} \d{2}" ]

proc hide_phone_number*(data:string, country:string):string = 
    var idx = Languages.find(country)
    if idx == -1:
        idx = 0

    var (s,e) = findBounds(data, re(NumberFormat[idx]))
    if s != 0 or e != len(data)-1:
        return "false"
    else:
        return data.substr(0,ReplaceFrom[idx]) & ReplacePattern[idx]