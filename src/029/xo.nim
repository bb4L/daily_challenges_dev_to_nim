import strutils

proc xo*(data: string): bool =
    let lowerData = data.toLower()
    lowerData.count('x') == lowerData.count('o')
