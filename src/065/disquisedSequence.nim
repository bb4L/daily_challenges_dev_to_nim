import math

proc disquisedSequence*(d: int): int =
    # var u_n = 1
    # var u_n1 = 2
    # var n = 1

    # while n < d:
    #     let new_n = ((6*u_n * u_n1) / (5*u_n - u_n1)).toInt()
    #     u_n = u_n1
    #     u_n1 = new_n
    #     inc(n)
    # result = u_n1

    # geometric series
    # q = 2
    result = pow(2, d.toFloat()).toInt()
