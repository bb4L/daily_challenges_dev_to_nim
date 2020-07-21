import math

proc nbYear*(start: int, percentage: float, newHabitant: int, goal: int): int =
    result = 0
    var population = float(start)

    while population < float(goal):
        population += math.floor(population * percentage / 100) + float(newHabitant)
        inc(result)
