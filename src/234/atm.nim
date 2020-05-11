const BILLS = @[500, 200, 100, 50, 20, 10]

proc solve*(target:int):int=
    var amount_to_go = target
    
    for bill in BILLS:
        if bill <= amount_to_go:
            let new_count = amount_to_go div bill
            amount_to_go -= new_count*bill
            result += new_count
        if amount_to_go == 0:
            return result

    result = -1
                

when isMainModule:
    echo "10 needs:" & $(solve(10)) & "bills"
    echo "550 needs:" & $(solve(550)) & "bills"
    echo "770 needs:" & $(solve(770)) & "bills"