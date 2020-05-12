import strutils

proc check_occurences(num:int, occurences:int):seq[int]=
    var digits = $(num)
    var last_digit = ' '
    var count = 0

    for d in digits:
        if d == last_digit:
            count += 1
            if count == occurences:
                count = 0
                last_digit = ' '
                result.add(parseInt($(d)))
        else:
            last_digit = d
            count = 1


proc tripledouble*(num1:int, num2:int):int = 
    let occurences_1 = check_occurences(num1, 3)
    let occurences_2 = check_occurences(num2, 2)

    for k in occurences_1:
        if k in occurences_2:
            return 1
    result = 0