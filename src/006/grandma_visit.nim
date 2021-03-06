import tables, math

const distances = {
    "X1": 100.0,
    "X2": 200.0,
    "X3": 250.0,
    "X4": 300.0,
}.toTable

const grannyFriends = [
    ["A1", "X1"],
    ["A2", "X2"],
    ["A3", "X3"],
    ["A4", "X4"], ]


proc getDistance(a: string, b: string): float =
    # improvements can be skipping cities in the order
    # visiting not in the order of the distances

    if a == "home":
        result = distances[b]
    else:
        result = min(distances[a]+distances[b], sqrt(pow(distances[b], 2)-pow(
                distances[a], 2)))

proc getWay(): float =
    # improve to hand over the sequence of friends to visit
    result = getDistance("home", grannyFriends[0][1])

    var oldPlace = grannyFriends[0][1]
    var newPlace = grannyFriends[0][1]
    for friend in grannyFriends[1..len(grannyFriends)-1]:
        newPlace = friend[1]
        result += getDistance(oldPlace, newPlace)
        oldPlace = newPlace

    result += distances[newPlace]

when isMainModule:
    echo "result"

    echo "distance " & $(getWay())
