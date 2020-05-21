proc century*(century: int): string =
    let c = century div 100 + 1
    result.add($(c))
    case c mod 100:
        of 11..13:
            result.add("th")
        else:
            case c mod 10:
                of 1:
                    result.add("st")
                of 2:
                    result.add("nd")
                of 3:
                    result.add("rd")
                else:
                    result.add("th")
