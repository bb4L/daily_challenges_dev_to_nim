import strutils

proc moneyValue*(data: string): float64 =
    try:
        result = data.replace(" ", "").replace("$", "").parseFloat()
    except:
        result = 0.0

    return result
