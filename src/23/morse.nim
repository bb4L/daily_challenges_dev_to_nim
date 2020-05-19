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
    var cleaned_data = data
    cleaned_data.removeSuffix(" ")
    cleaned_data.removePrefix(" ")
    result = cleaned_data.map(proc(x: char): string = CharToMorse.getOrDefault(
            $(x), "?")).join(" ")

proc toChar*(data: string): string =
    var cleaned_data = data
    cleaned_data.removeSuffix(" ")
    cleaned_data.removePrefix(" ")
    result = cleaned_data.split(" ").map(proc(
            x: string): string = MorseToChar.getOrDefault(x, "?")).join("")
