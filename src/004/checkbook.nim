import strutils, strformat

var incorrectChars = AllChars - Letters - Digits - Whitespace
incorrectChars.excl('.')


proc checkbook*(data: string): string =
    var resultData = newSeq[string]()

    let mylines = data.splitLines()
    let initBalance = parseFloat(mylines[0].split(incorrectChars).join())
    var balance = initBalance

    let bal = fmt("{balance:9.2f}").strip().strip(trailing = true)

    resultData.add(fmt("Original_Balance: {bal}"))
    var expCount = 0

    for line in mylines[1 .. len(mylines)-1]:
        inc(expCount)

        let cleanedLine = line.split(incorrectChars).join().split(" ")
        let expence = parseFloat(cleanedLine[2])

        balance = balance - expence

        let val = fmt("{balance:9.2f}").strip().strip(trailing = true)

        resultData.add(cleanedLine[0..1].join(" ") & " " & fmt(
                "{expence:9.2f}").strip().strip(trailing = true) & " Balance " &
                $(val))

    resultData.add("Total expense " & fmt(
            "{(initBalance-balance):9.2f}").strip().strip(trailing = true))
    resultData.add("Average expense " & fmt(
            "{(initBalance-balance)/toFloat(expCount):9.2f}").strip().strip(
            trailing = true))

    result = resultData.join("\n")


when isMainModule:
    let data = readFile("challenge_input.txt")
    echo ""
    echo "RESULT"
    echo ""
    echo checkbook(data)
