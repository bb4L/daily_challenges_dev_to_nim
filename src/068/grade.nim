import math

proc grade*(grade1: int, grade2: int, grade3: int): string =
    let final = floor(sum(@[grade1, grade2, grade3]) / 3)

    case toInt(final) div 10:
        of 0 .. 5:
            result.add("F")
        of 6:
            result.add("D")
        of 7:
            result.add("C")
        of 8:
            result.add("B")
        else:
            result.add("A")

    if final.toInt() mod 10 < 5:
        result.add("-")
    else:
        result.add("+")
