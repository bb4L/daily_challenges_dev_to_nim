proc movie*(card: int, normal_price: int, perc: float): int =
    var cheapest = perc * normal_price.toFloat()
    var diff = card.toFloat() + perc * normal_price.toFloat() -
            normal_price.toFloat()

    var k = 1
    while diff > 0:
        cheapest *= perc
        diff += (-normal_price.toFloat() + cheapest)
        inc(k)

    result = k
