import strutils

proc prepareFile() =
    var data = newSeq[string]()
    var data2 = newSeq[string]()
    for line in lines "alphabet.txt":
        var val = line.multiReplace((" ", ""), ("\t", ""))
        data.add("\"" & val.substr(0, 0) & "\":\"" & val.substr(1) & "\"")
        data2.add("\"" & val.substr(1) & "\": \"" & val.substr(0, 0) & "\"")

    echo "First table"
    echo data.join(", ")

    echo "second"
    echo data2.join(", ")

when isMainModule:
    prepareFile()
