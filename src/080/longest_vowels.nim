import re, sequtils

proc longestVowels*(val: string): int =
    result = max(val.findAll(re(r"[aeiou]+")).map(proc(x: string): int = len(x)))
