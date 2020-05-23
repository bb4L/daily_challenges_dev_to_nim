import tables, sequtils

proc pizza*(count: int, value: int, customers: Table[string, seq[int]]): seq[string] =
    for k, v in customers.pairs:
        if len(v.filter(proc(x: int): bool = x > value)) > count:
            result.add(k)
