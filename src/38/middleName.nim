import strutils

proc middleName*(name:string) :string =
    var names = name.split(" ")
    if len(names)>2:
        for i in 1 .. len(names)-2:
            names[i] = names[i][0] & "."
        result = names.join(" ")
    else:
        return name
    echo "implement"
