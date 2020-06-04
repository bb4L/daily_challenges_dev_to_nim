const BILLS = @[500, 200, 100, 50, 20, 10]

proc solve*(target: int): int =
    var amountToGo = target

    for bill in BILLS:
        if bill <= amountToGo:
            let newCount = amountToGo div bill
            amountToGo -= newCount*bill
            result += newCount
        if amountToGo == 0:
            return result

    result = -1


when isMainModule:
    echo "10 needs:" & $(solve(10)) & "bills"
    echo "550 needs:" & $(solve(550)) & "bills"
    echo "770 needs:" & $(solve(770)) & "bills"
