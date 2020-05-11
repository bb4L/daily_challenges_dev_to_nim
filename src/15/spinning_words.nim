import strutils, algorithm, sequtils

proc do_logic(x:string):string = 
    if len(x) >= 5:
        result = reversed(x).join("")
    else:
        result = x

proc spinning_words*(in_data:string):string=
    var my_data = in_data.split(" ")
    my_data.apply(do_logic)

    result = my_data.join(" ")