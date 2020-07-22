import strutils

proc errorPrinter*(colorcodes: string): string =
    $(len(colorcodes)-colorcodes.count({'a'..'m'})) & "/" & $(len(colorcodes))
