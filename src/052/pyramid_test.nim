import unittest, pyramid

suite "test pyramid":
    test "1":
        check(pyramid(5) == """    *    
   ***   
  *****  
 ******* 
*********""")
