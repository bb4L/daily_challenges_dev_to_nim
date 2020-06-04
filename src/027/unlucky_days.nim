import times, sequtils

proc unluckyDays*(year: int): int =
    len(Month.mapIt(it).map(proc(x: Month): WeekDay = getDayOfWeek(13, x,
            year)).filter(proc(x: WeekDay): bool = x == WeekDay.dFri))

    # verbose alternative
    # for m in Month:
        # if WeekDay.dFri == getDayOfWeek(13, m, year):
            # inc(result)
