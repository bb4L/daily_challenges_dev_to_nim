import math, strformat

proc kill_monster*(health:int, number_of_monster:int, monster_dmg:int): string = 
    let rounds = (number_of_monster-1) div 3
    let total_dmg = monster_dmg * rounds
    if total_dmg > health:
        return "hero died"
    else:
        return fmt"hits: {rounds}, damage: {total_dmg}, health: {health-total_dmg}"