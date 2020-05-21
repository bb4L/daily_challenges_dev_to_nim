proc potatoes*(p0: int, w0: int, p1: int): int =
    result = (w0 * (100 - p0) / (100 - p1)).toInt()
