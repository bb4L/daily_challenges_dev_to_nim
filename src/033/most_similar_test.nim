import unittest, most_similar

suite "similar test":
    test "fruits strawbery":
        check(mostSimilar(@["cherry", "pineapple", "melon", "strawberry",
                "raspberry"], "strawbery") == "strawberry")

    test "fruits berry":
        check(mostSimilar(@["cherry", "pineapple", "melon", "strawberry",
                "raspberry"], "berry") == "cherry")


    test "things":
        check(mostSimilar(@["stars", "mars", "wars", "codec", "codewars"],
                "coddwars") == "codewars")

    test "languages heaven":
        check(mostSimilar(@["javascript", "java", "ruby", "php", "python",
                "coffeescript"], "heaven") == "java")

    test "languages javascript":
        check(mostSimilar(@["javascript", "java", "ruby", "php", "python",
                "coffeescript"], "javascript") == "javascript")
