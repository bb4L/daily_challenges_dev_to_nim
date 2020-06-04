import sequtils

proc expressionMatters*(inputNumbers: seq[int]): int =
    if inputNumbers.contains(1):
        if inputNumbers[0] > inputNumbers[2]:
            result = (inputNumbers[1]+inputNumbers[2]) * inputNumbers[0]
        elif inputNumbers[0] < inputNumbers[2]:
            result = (inputNumbers[1] + inputNumbers[0]) * inputNumbers[2]
        elif inputNumbers[0] == inputNumbers[1]:
            result = inputNumbers.foldl(a+b)
        else:
            result = (inputNumbers[1] + inputNumbers[0]) * inputNumbers[2]
    else:
        result = inputNumbers.foldl(a*b)
