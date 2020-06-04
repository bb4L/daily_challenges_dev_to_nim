proc movie*(card: int, normalPrice: int, perc: float): int =
    var cheapest = perc * normalPrice.toFloat()
    var diff = card.toFloat() + perc * normalPrice.toFloat() -
            normalPrice.toFloat()

    var k = 1
    while diff > 0:
        cheapest *= perc
        diff += (-normalPrice.toFloat() + cheapest)
        inc(k)

    result = k
