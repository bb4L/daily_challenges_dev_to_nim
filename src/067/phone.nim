import strutils, re, strformat, sequtils

const filterSeq = concat(toSeq('a' .. 'z'), toSeq('A'..'Z'), toSeq('0'..'9'),
        @['.', ' ', '-'])

proc parseEntry(entry: string): string =
    let pNumber = findBounds(entry, re"\d{1,2}-\d{3}-\d{3}-\d{4}")
    let phoneNumber = entry.substr(pNumber[0], pNumber[1])
    let nameBound = findBounds(entry, re"<[a-zA-z]*[ ]*[a-zA-z]*>")
    let name = entry.substr(nameBound[0], nameBound[1])

    var remainingString = entry.multiReplace((phoneNumber, ""), (name, ""))
    var address = remainingString.toSeq().map(proc(c: char): char =
        if filterSeq.find(c) == -1:
            result = ' '
        else:
            result = c
    ).join("")

    address.removePrefix(' ')
    address.removeSuffix(' ')

    var preAddress = address
    address = address.replace("  ", " ")

    while preAddress != address:
        preAddress = address
        address = address.replace("  ", " ")

    result = fmt"Phone => {phoneNumber}, Name => {name[1..len(name)-2]}, Address => {address}"


proc phone*(phonebook: string, searchNumber: string): string =
    result = fmt"Error => Not found: {searchNumber}"
    var foundOne = false
    for entry in phonebook.split("\n"):
        let idx = entry.find(searchNumber)
        if idx > -1:
            if foundOne:
                return fmt"Error => Too many people: {searchNumber}"
            foundOne = true
            result = parseEntry(entry)
