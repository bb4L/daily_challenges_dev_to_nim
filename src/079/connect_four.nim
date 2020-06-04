import strutils

const COLUMNS = @"ABCDEFG"

proc checkSeq(values: seq[char], first_char: char): bool =
    return values.join("").contains(first_char.repeat(4))


proc connectFour*(moves: seq[string]): string =
    let diagonalCount = 7

    var board = newSeq[seq[char]](7)
    var diagonals = newSeq[seq[char]](diagonalCount+1)
    var rows = newSeq[seq[char]]()

    for i in 0 .. 6:
        rows.add(newSeq[char](7))

    for s in moves:
        let k = s.split("_")
        let column = k[0][0]
        let color = k[1]
        let colIdx = COLUMNS.find(column)
        board[colIdx].add(color[0])
        let height = len(board[colIdx])
        let check_string = color[0].repeat(4)
        let col = colIdx + 1
        let diff = col - height

        if board[colIdx].join("").contains(check_string):
            return color

        rows[height][colIdx] = color[0]

        if rows[height].join("").contains(check_string):
            return color

        if diff > 0:
            diagonals[diff].add(color[0])
            if checkSeq(diagonals[diff], color[0]):
                return color
        else:
            diagonals[diagonalCount + diff].add(color[0])
            if checkSeq(diagonals[diagonalCount + diff], color[0]):
                return color

    result = "Draw"
