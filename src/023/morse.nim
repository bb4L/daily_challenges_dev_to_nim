import tables, strutils, sequtils

const CharToMorse = {"A": ".-", "B": "-...", "C": "-.-.", "D": "-..", "E": ".",
        "F": "..-.", "G": "--.", "H": "....", "I": "..", "J": ".---",
        "K": "-.-", "L": ".-..", "M": "--", "N": "-.", "O": "---", "P": ".--.",
        "Q": "--.-", "R": ".-.", "S": "...", "T": "-", "U": "..-", "V": "...-",
        "W": ".--", "X": "-..-", "Y": "-.--", "Z": "--.."}.toTable

const MorseToChar = {".-": "A", "-...": "B", "-.-.": "C", "-..": "D", ".": "E",
        "..-.": "F", "--.": "G", "....": "H", "..": "I", ".---": "J",
        "-.-": "K", ".-..": "L", "--": "M", "-.": "N", "---": "O", ".--.": "P",
        "--.-": "Q", ".-.": "R", "...": "S", "-": "T", "..-": "U", "...-": "V",
        ".--": "W", "-..-": "X", "-.--": "Y", "--..": "Z"}.toTable

proc toMorse*(data: string): string =
    var cleanedData = data
    cleanedData.removeSuffix(" ")
    cleanedData.removePrefix(" ")
    result = cleanedData.map(proc(x: char): string = CharToMorse.getOrDefault(
            $(x), "?")).join(" ")

proc toChar*(data: string): string =
    var cleanedData = data
    cleanedData.removeSuffix(" ")
    cleanedData.removePrefix(" ")
    result = cleanedData.split(" ").map(proc(
            x: string): string = MorseToChar.getOrDefault(x, "?")).join("")
