import strutils

const powers = @['a','s','p','c','a']

proc fightResolve*(defender:char, attacker:char):char =
    if defender.isLowerAscii() == attacker.isLowerAscii():
        return ' '
    
    if powers.find(defender.toLowerAscii()) - powers.find(attacker.toLowerAscii()) == -1:
        return defender

    return attacker