import strutils

proc xo*(data:string):bool = 
    let lower_data = data.toLower()
    lower_data.count('x') == lower_data.count('o')