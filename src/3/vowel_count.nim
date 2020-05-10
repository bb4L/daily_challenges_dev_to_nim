import strutils

const vowels = ['a','e','i','o','u']

proc vowel_count*(data:string):int =
    result = 0
    let d = data.toLowerAscii()

    for c in vowels:
        result += d.count(c)