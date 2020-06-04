import math, strformat

proc killMonster*(health: int, numberOfMonster: int,
        monsterDmg: int): string =
    let rounds = (numberOfMonster-1) div 3
    let totalDmg = monsterDmg * rounds
    if totalDmg > health:
        return "hero died"
    else:
        return fmt"hits: {rounds}, damage: {totalDmg}, health: {health-totalDmg}"
