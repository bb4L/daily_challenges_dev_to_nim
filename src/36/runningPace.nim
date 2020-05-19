import strutils, math, strformat

proc runningPace*(distance: float, time: string): string =
    let time_str = time.split(":")
    let time_seconds = 60*parseInt(time_str[0]) + parseInt(time_str[1])
    let seconds_per_km = floor(time_seconds.toFloat() / distance).toInt()
    return fmt"{seconds_per_km div 60:02}:{seconds_per_km mod 60:02}"
