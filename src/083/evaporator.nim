import math

proc evaporator*(conent: int, evap_per_day: float, threshold: float): int =
    return (log10(threshold/100)/log10(1-(evap_per_day/100))).ceil().toInt()
