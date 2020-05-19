import math

proc original_price*(price: float32, discount: float32): float32 =
    return round(price * 100 / (100-discount), 2)
