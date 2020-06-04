import tables, strutils, math

const Rates = {"terrible": 0.0, "poor": 0.05, "good": 0.1, "great": 0.15,
        "excellent": 0.2}.toTable

proc calculatetip*(billValue: float, rating: string): int =
    result = -1
    let rate = Rates.getOrDefault(rating.toLower(), -1)
    if rate >= 0:
        result = toInt(ceil(billValue * rate))
