proc halvingSum*(n: int): int =
    var k = n
    result = n

    while k div 2 >= 1:
        k = k div 2
        result += k
