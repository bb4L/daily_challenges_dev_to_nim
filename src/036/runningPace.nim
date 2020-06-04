import strutils, math, strformat

proc runningPace*(distance: float, time: string): string =
    let timeStr = time.split(":")
    let timeSeconds = 60*parseInt(timeStr[0]) + parseInt(timeStr[1])
    let secondsPerKm = floor(timeSeconds.toFloat() / distance).toInt()
    return fmt"{secondsPerKm div 60:02}:{secondsPerKm mod 60:02}"
