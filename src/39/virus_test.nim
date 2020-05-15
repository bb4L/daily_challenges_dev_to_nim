import unittest, virus

suite "test virus":
    test "1":
        check(virus("He haD iEght ShOTs of CAffIEne.") == "He had eight shots of caffeine.")
        check(virus("He haD iEght ShOTs of CAffIEne. He haD iEght ShOTs of CAffIEne.") == "He had eight shots of caffeine. He had eight shots of caffeine.")
