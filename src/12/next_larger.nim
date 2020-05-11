import algorithm, sequtils

proc next_larger*(value:int):int=
    var digits_to_use = newSeq[int]()
    var actual_number = value
    while actual_number>0:
        digits_to_use.add(actual_number mod 10)
        actual_number = actual_number div 10
    
    digits_to_use = sorted(digits_to_use)
    result = digits_to_use.foldl(10*a + b)
    while result <= value:
        if digits_to_use.nextPermutation() != true:
            result = -1
            break
        result = digits_to_use.foldl(10*a + b)
