import unittest, piglatin

suite "test pigit":
    test "Hello world !":
        check(pigit("Hello world !")=="elloHay orldway !")

    test "Pig latin is cool":
        check(pigit("Pig latin is cool")=="igPay atinlay siay oolcay")
        
    test "unpig Hello world !":
        check(unpig(pigit("Hello world !"))=="Hello world !")

    test "unpig Pig latin is cool":
        check(unpig(pigit("Pig latin is cool"))=="Pig latin is cool")