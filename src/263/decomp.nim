proc decomp*(n: int): string =
    result = ""
    var d = 0
    var f = 0

    for i in 2 .. n:
        var counter = 0
        var isPrime = true

        # https://www.geeksforgeeks.org/program-to-print-first-n-prime-numbers/
        for k in 2 .. (i div 2)+1:
            if i mod k == 0 and i != k:
                isPrime = false
                break

        if isPrime:
            # https://janmr.com/blog/2010/10/prime-factors-of-factorial-numbers/#:~:text=The%20prime%20factors%20of%20a,and%20the%20complete%20factorization%20of&text=p%E2%88%A3ab%20for,First%20Theorem%20or%20Euclid's%20Lemma.

            d = i
            f = n div d
            while f != 0:
                counter += f
                d *= i
                f = n div d

        if counter > 0:
            result &= $(i)

            if counter > 1:
                result &= "^" & $(counter)

            result &= " * "

    result = result[0 .. len(result)-4]
