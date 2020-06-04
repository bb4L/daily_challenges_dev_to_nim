import times

proc count*(birthdate: DateTime, today: DateTime): string =
    let startWorking = birthdate + 22.years
    let firstMonday = start_working + ((7 - ord(startWorking.weekday) - ord(
            dMon)) mod 7).days

    let retirement = birthdate + 78.years - 1.days
    let lastDay = min(retirement, today)

    let count = ((lastDay - firstMonday).inDays() div 7) + 1

    if count > 1 or count == 0:
        return $(count) & " Mondays"
    elif count == 1:
        return $(count) & " Monday"
