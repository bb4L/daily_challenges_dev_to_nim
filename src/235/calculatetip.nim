import tables, strutils, math

const rates = {"terrible":0.0, "poor":0.05, "good":0.1, "great":0.15, "excellent":0.2 }.toTable

proc calculatetip*(bill_value:float, rating:string): int =
    result = -1
    let rate = rates.getOrDefault(rating.toLower(), -1)
    if rate >= 0 :
        result = toInt(ceil(bill_value * rate))
