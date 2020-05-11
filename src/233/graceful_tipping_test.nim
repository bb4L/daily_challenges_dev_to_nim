import  unittest
import graceful_tipping

suite "test for graceful_tipping":
  # echo "suite setup: run once before the tests"
  
  # setup:
  #   echo "run before each test"
  
  # teardown:
  #   echo "run after each test"
  
  test "1 -> 2":
    # give up and stop if this fails
    require(true)
    check(gracefulTipping(1)==2)
  
  test "7 --> 9":
    let res = gracefulTipping(7)
    check(res==9)
    # print a nasty message and move on, skipping
    # the remainder of this block
    # check(1 != 1)
    # check("asd"[2] == 'd')
  
  test "12 --> 15":
    let res = gracefulTipping(12.0)
    check(res==15)
    # let v = @[1, 2, 3]  # you can do initialization here
    # expect(IndexError):
      # discard v[4]
  
  test "86 --> 100":
    let res = gracefulTipping(86.0)
    check(res==100)

  # echo "suite teardown: run once after the tests"