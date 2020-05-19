import strutils, strformat

var incorrect_chars = AllChars - Letters - Digits - Whitespace
incorrect_chars.excl('.')


proc checkbook*(data: string): string =
    var result_data = newSeq[string]()

    let mylines = data.splitLines()
    let init_balance = parseFloat(mylines[0].split(incorrect_chars).join())
    var balance = init_balance

    let bal = fmt("{balance:9.2f}").strip().strip(trailing = true)

    result_data.add(fmt("Original_Balance: {bal}"))
    var exp_count = 0

    for line in mylines[1 .. len(mylines)-1]:
        inc(exp_count)

        let cleaned_line = line.split(incorrect_chars).join().split(" ")
        let expence = parseFloat(cleaned_line[2])

        balance = balance - expence

        let val = fmt("{balance:9.2f}").strip().strip(trailing = true)

        result_data.add(cleaned_line[0..1].join(" ") & " " & fmt(
                "{expence:9.2f}").strip().strip(trailing = true) & " Balance " &
                $(val))

    result_data.add("Total expense " & fmt(
            "{(init_balance-balance):9.2f}").strip().strip(trailing = true))
    result_data.add("Average expense " & fmt(
            "{(init_balance-balance)/toFloat(exp_count):9.2f}").strip().strip(
            trailing = true))

    result = result_data.join("\n")


when isMainModule:
    let data = readFile("challenge_input.txt")
    echo ""
    echo "RESULT"
    echo ""
    echo checkbook(data)
