proc find_outlier*(data:seq[int]):int = 
    var first_val = data[0] mod 2
    var second_val = data[1] mod 2
    if first_val != second_val:
        if second_val == data[2] mod 2:
            return data[0]
        else:
            return data[1]
    for i in data:
        if i mod 2 != first_val:
            return i
