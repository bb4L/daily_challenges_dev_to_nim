import math

proc evaporator*(conent: int, evapPerDay: float, threshold: float): int =
    return (log10(threshold/100)/log10(1-(evapPerDay/100))).ceil().toInt()
