import unittest, most_similar

suite "similar test":
    test "fruits strawbery":
        check(most_similar(@["cherry", "pineapple", "melon", "strawberry", "raspberry"], "strawbery")=="strawberry")

    test "fruits berry":
        check(most_similar(@["cherry", "pineapple", "melon", "strawberry", "raspberry"], "berry")=="cherry")

    
    test "things":
        check(most_similar(@["stars", "mars", "wars", "codec", "codewars"], "coddwars") == "codewars")

    test "languages heaven":
        check(most_similar(@["javascript", "java", "ruby", "php", "python", "coffeescript"], "heaven") == "java")

    test "languages javascript":
        check(most_similar(@["javascript", "java", "ruby", "php", "python", "coffeescript"], "javascript") == "javascript")
