proc cost*(minutes: int): int =
    if minutes < 5:
        return 0

    var hours = minutes div 60
    let mins = minutes mod 60

    result += 30
    dec(hours)

    if hours > 0:
        result += 2*hours*10

    if mins > 5 and hours >= 0:
        result += 10
        if mins > 35:
            result += 10
