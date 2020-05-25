import strutils, sequtils

const COLUMNS = "ABCDEFG".toSeq()

proc check_seq(values: seq[char], first_char: char): bool =
    return values.join("").contains(first_char.repeat(4))


proc connect_four*(moves: seq[string]): string =
    let diagonal_count = 7

    var board = newSeq[seq[char]](7)
    var diagonals = newSeq[seq[char]](diagonal_count+1)
    var rows = newSeq[seq[char]]()

    for i in 0 .. 6:
        rows.add(newSeq[char](7))

    for s in moves:
        let k = s.split("_")
        let column = k[0][0]
        let color = k[1]
        let col_idx = COLUMNS.find(column)
        board[col_idx].add(color[0])
        let height = len(board[col_idx])
        let check_string = color[0].repeat(4)
        let col = col_idx + 1
        let diff = col - height

        if board[col_idx].join("").contains(check_string):
            return color

        rows[height][col_idx] = color[0]

        if rows[height].join("").contains(check_string):
            return color

        if diff > 0:
            diagonals[diff].add(color[0])
            if check_seq(diagonals[diff], color[0]):
                return color
        else:
            diagonals[diagonal_count + diff].add(color[0])
            if check_seq(diagonals[diagonal_count + diff], color[0]):
                return color

    result = "Draw"
