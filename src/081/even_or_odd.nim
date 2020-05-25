import strutils

proc even_or_odd*(vals: string): string =
    var even_sum = 0
    var odd_sum = 0

    for c in vals:
        let n = ($(c)).parseInt()
        if n mod 2 == 0:
            even_sum += n
        else:
            odd_sum += n

    let sum_even_odd = even_sum - odd_sum

    if sum_even_odd > 0:
        result = "Even is greater than Odd"
    elif sum_even_odd == 0:
        result = "Even and Odd are the same"
    else:
        result = "Odd is greater than Even"
