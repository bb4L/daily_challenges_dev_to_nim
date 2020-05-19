import strutils, strformat

proc facebook*(likes: seq[string]): string =
    let length = len(likes)
    case length:
        of 0:
            return "no one likes this"
        of 1:
            return fmt"{likes[0]} likes this"
        of 2:
            result = likes.join(" and ")
        of 3:
            result = fmt"{likes[0]}, {likes[1]} and {likes[2]}"
        else:
            result = fmt"{likes[0]}, {likes[1]} and {length-2} others"

    result.add(" like this")
