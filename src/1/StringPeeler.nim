proc stringPeeler*(val:string):string=
    if len(val)<=2:
        result = ""
    else:
        result = val[1..val.len-2]
