proc beggars*(nums: seq[int], num_beggars: int): seq[int] =
    result = newSeq[int](num_beggars)

    var len_nums = len(nums)
    for k in countup(0, len_nums-1, num_beggars):
        for i in 0 .. num_beggars-1:
            if k+i == len_nums:
                break
            result[i] = result[i] + nums[k+i]
