import strutils, tables, sequtils, algorithm

const NotNumbers = @['T', 'J', 'Q', 'K', 'A']
const HANDS = ["HighCard", "Pair", "Two Pair", "Three", "Straight", "Flush",
        "FullHouse", "Four", "SFlush", "RF"]
const WIN = "WIN"
const LOSS = "LOSS"
const DRAW = "DRAW"

proc getHandRating(pokerhand: string): seq[string] =
    var cards2 = initTable[string, int]()
    var cards = newSeq[string]()
    var suits = newSeq[char]()
    var hand = HANDS[0]
    var relevantCard = 2

    for s in pokerhand.split(" "):
        var k = $(s[0])
        if k[0] in NotNumbers:
            k = $(10 + NotNumbers.find(k[0]))

        if not cards.contains(k):
            cards.add(k)
            cards2.add(k, 1)
        else:
            cards2[k] = cards2.getOrDefault(k) + 1

        if not suits.contains(s[1]):
            suits.add(s[1])

    var numbers = cards.map(proc(x: string): int =
        return parseInt(x)
    )
    numbers.sort()

    var isFlush = false
    var isStraight = false

    if len(suits) == 1:
        isFlush = true

    if len(numbers) == 5 and numbers[4] - numbers[0] == 4:
        isStraight = true

    if isFlush and isStraight:
        if max(numbers) == 14:
            hand = HANDS[9]
        else:
            hand = HANDS[8]

    elif isFlush or isStraight:
        relevantCard = max(numbers)
        if isFlush:
            hand = HANDS[5]
        else:
            hand = HANDS[4]

    if not isFlush and not isStraight:
        var numberCounts = newSeq[int]()
        var highCard = 0

        var maxV = 0
        for k1, v in cards2.pairs:
            let k = parseInt(k1)
            numberCounts.add(v)
            if v >= maxV:
                if k > highCard:
                    highCard = k
                    maxV = v

        relevantCard = highCard

        numberCounts.sort()

        let lenNumberCounts = len(numberCounts)

        if lenNumberCounts == 2 and numberCounts[0] == 2:
            # Full House
            hand = HANDS[6]

        else:
            # check pair, two pair, three of a kind, four of a kind
            if maxV == 3:
                hand = HANDS[3]
            elif maxV == 4:
                hand = HANDS[7]
            elif maxV == 2 and lenNumberCounts == 4:
                hand = HANDS[1]
            elif maxV == 2 and lenNumberCounts == 3:
                hand = HANDS[2]

    return @[hand, $(relevantCard)]

proc comparePokerHand*(hand1: string, hand2: string): string =
    let r1 = getHandRating(hand1)
    let r2 = getHandRating(hand2)
    let f1 = HANDS.find(r1[0])
    let f2 = HANDS.find(r2[0])

    if f1 > f2:
        return WIN

    elif f1 < f2:
        return LOSS

    else:
        let i1 = parseInt(r1[1])
        let i2 = parseInt(r2[1])
        if i1 > i2:
            return WIN
        elif i1 < i2:
            return LOSS
        else:
            return DRAW
