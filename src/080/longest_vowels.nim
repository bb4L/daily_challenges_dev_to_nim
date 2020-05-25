import re, sequtils

proc longest_vowels*(val: string): int =
    result = max(val.findAll(re(r"[aeiou]+")).map(proc(x: string): int = len(x)))
