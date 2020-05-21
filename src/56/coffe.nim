proc coffe*(money: float): string =
    result = "Here is your "

    case money:
        of 2.2:
            result.add("Americano")
        of 2.3:
            result.add("Latte")
        of 2.4:
            result.add("Flat white")
        of 3.5:
            result.add("Filter")
        else:
            return "Sorry, exact change only, try again tomorrow!"

    result.add(", have a nice day!")

