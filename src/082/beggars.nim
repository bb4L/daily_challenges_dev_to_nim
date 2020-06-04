proc beggars*(nums: seq[int], numBeggars: int): seq[int] =
    result = newSeq[int](numBeggars)

    var lenNums = len(nums)
    for k in countup(0, lenNums-1, numBeggars):
        for i in 0 .. numBeggars-1:
            if k+i == lenNums:
                break
            result[i] = result[i] + nums[k+i]
