import strformat

proc dollars*(data: float): string =
    fmt"${data:.2f}"

