import unittest, spinning_words

suite "test #15":
    test "Stop Spinning My Words":
        check(spinning_words("Stop Spinning My Words") == "Stop gninnipS My sdroW")
    test "2":
        check(spinning_words("Today's challenge comes from user xDranik on CodeWars") == "s'yadoT egnellahc semoc from user kinarDx on sraWedoC")
