import algorithm, sequtils

proc nextLarger*(value: int): int =
    var digitsToUse = newSeq[int]()
    var actualNumber = value
    while actualNumber > 0:
        digitsToUse.add(actualNumber mod 10)
        actualNumber = actualNumber div 10

    digitsToUse = sorted(digitsToUse)
    result = digitsToUse.foldl(10*a + b)
    while result <= value:
        if digitsToUse.nextPermutation() != true:
            result = -1
            break
        result = digitsToUse.foldl(10*a + b)
