import strutils, sequtils, algorithm, strformat

type Person = tuple
    firstname: string
    lastname: string

proc meetings*(friends: string): string =
    friends.split(";").map(proc(x: string): Person =
        let q = x.split(":")
        (q[0].toUpperAscii(), q[1].toUpperAscii())
    ).sorted(proc(x, y: Person): int =
        if x.lastname == y.lastname:
            cmp(x.firstname, y.firstname)
        else:
            cmp(x.lastname, y.lastname)
    ).map(proc(x: Person): string =
        fmt"({x.lastname}, {x.firstname})").join("")
