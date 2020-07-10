import math

const g = 9.81

proc dist*(v_kmh: float, mu: float): float =
    let v = v_kmh / 3.6
    v + pow(v, 2) / (2 * mu * g)

proc speed*(d: float, mu: float): float =
    let v1 = mu * g * (-1.0 + sqrt(1.0 + (4.0 * d / (2.0 * mu * g))))
    let v2 = mu * g * (-1.0 - sqrt(1.0 + (4.0 * d / (2.0 * mu * g))))
    if v1 > v2:
        result = v1
    else:
        result = v2
    result = result * 3.6 # conversion to km/h
