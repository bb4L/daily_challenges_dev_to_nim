import sequtils

proc expression_matters*(input_numbers: seq[int]): int =
    if input_numbers.contains(1):
        if input_numbers[0] > input_numbers[2]:
            result = (input_numbers[1]+input_numbers[2]) * input_numbers[0]
        elif input_numbers[0] < input_numbers[2]:
            result = (input_numbers[1] + input_numbers[0]) * input_numbers[2]
        elif input_numbers[0] == input_numbers[1]:
            result = input_numbers.foldl(a+b)
        else:
            result = (input_numbers[1] + input_numbers[0]) * input_numbers[2]
    else:
        result = input_numbers.foldl(a*b)
