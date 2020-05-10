import  unittest
import diamond
import strutils

suite "test diamond":
    test "0":
        check(diamond(0).len==0)

    test "1":
        let stars = @["*"]
        let dia= stars.join("\n")
        check(diamond(1)==dia)
    
    test "3":
        let stars = @[" * ", "***", " * "]
        let dia= stars.join("\n")
        check(diamond(3)==dia)
        # check(diamond(3)==" * \n***\n * ")

    test "5":
        let stars = @["  *  ", " *** ", "*****", " *** ", "  *  "]
        let dia= stars.join("\n")
        check(diamond(5)==dia)

    test "-2":
        check(diamond(-2).len==0)
    
    test "-3":
        check(diamond(-3).len==0)

    test "2":
        check(diamond(2).len==0)