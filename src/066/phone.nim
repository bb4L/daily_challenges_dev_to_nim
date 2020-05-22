import strutils, re, strformat, sequtils

const filter_seq = concat(toSeq('a' .. 'z'), toSeq('A'..'Z'), toSeq('0'..'9'),
        @['.', ' ', '-'])

proc parseEntry(entry: string): string =
    let p_number = findBounds(entry, re"\d{1,2}-\d{3}-\d{3}-\d{4}")
    let phone_number = entry.substr(p_number[0], p_number[1])
    let name_bound = findBounds(entry, re"<[a-zA-z]*[ ]*[a-zA-z]*>")
    let name = entry.substr(name_bound[0], name_bound[1])

    var remaining_string = entry.multiReplace((phone_number, ""), (name, ""))
    var address = remaining_string.toSeq().map(proc(c: char): char =
        if filter_seq.find(c) == -1:
            result = ' '
        else:
            result = c
    ).join("")

    address.removePrefix(' ')
    address.removeSuffix(' ')

    var pre_address = address
    address = address.replace("  ", " ")

    while pre_address != address:
        pre_address = address
        address = address.replace("  ", " ")

    result = fmt"Phone => {phone_number}, Name => {name[1..len(name)-2]}, Address => {address}"


proc phone*(phonebook: string, searchNumber: string): string =
    result = fmt"Error => Not found: {searchNumber}"
    var found_one = false
    for entry in phonebook.split("\n"):
        let idx = entry.find(searchNumber)
        if idx > -1:
            if found_one:
                return fmt"Error => Too many people: {searchNumber}"
            found_one = true
            result = parseEntry(entry)
