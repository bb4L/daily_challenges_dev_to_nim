import strformat, math

proc getEvolutionRateMessage*(before: float, after: float): string =
    let diff = after - before
    if diff == 0:
        return "No evolution."
    else:
        var evolution = 0
        if after == 0 or before == 0:
            evolution = toInt(max(after, before) * 100)
        else:
            evolution = abs(round(diff / before * 100).toInt())

        if diff > 0:
            return fmt"A positive evolution of {evolution}%."

        return fmt"A negative evolution of {evolution}%."
