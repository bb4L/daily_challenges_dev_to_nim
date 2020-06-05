import unittest, sortSentence

suite "test sortSentence":
    test "1":
        check(sortSentence("Land of the Old Thirteen! Massachusetts land! land of Vermont and Connecticut!") == "and land land of of the Vermont Thirteen Old Massachusetts Land Connecticut")
