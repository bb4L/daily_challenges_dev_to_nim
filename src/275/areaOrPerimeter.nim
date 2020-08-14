proc areaOrPerimeter*(a, b: int): int =
    if a == b:
        return a*b
    return 2*(a+b)
