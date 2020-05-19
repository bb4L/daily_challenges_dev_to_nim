import unittest, redacted

suite "test redacted":
    test "1":
        check(checkDocuments("test1_doc1.txt", "test1_doc2.txt") == true)
    test "2":
        check(checkDocuments("test2_doc1.txt", "test2_doc2.txt") == false)

    test "3":
        check(checkDocuments("test3_doc1.txt", "test3_doc2.txt") == true)
