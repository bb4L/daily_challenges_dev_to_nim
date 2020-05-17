import strutils

proc questionmark*(data:string):string =
    data.replace("?","")