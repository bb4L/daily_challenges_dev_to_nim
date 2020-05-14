import unittest, ranking

suite "test ranking":
    test "test1":
        check(ranking(@[( "John",  100),( "Bob", 130),( "Mary", 120),( "Kate", 120)]) == @[( "Bob", 130, 1,),( "Kate", 120, 2,),( "Mary", 120, 2,),( "John", 100, 4,)])
        check(ranking(@[(name:"John", points:100)]) == @[(name:"John", points:100, position:1)])