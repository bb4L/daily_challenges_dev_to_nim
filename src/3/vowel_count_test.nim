import  unittest, vowel_count

suite "test for vowels":
  
  test "no vowel":
    check(vowel_count("wsdfhngmbncbxvd")==0)
  
  test "vowels":
    check(vowel_count("wsdfhongmibencbxavd")==4)
