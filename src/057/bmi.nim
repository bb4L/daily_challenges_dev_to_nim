import math

proc bmi*(weight: float, height: float): string =
    let bmi = weight / pow(height/100, 2)

    if bmi <= 18.5:
        result = "Underweight"
    elif bmi <= 25:
        result = "Normal"
    elif bmi <= 30:
        result = "Overweight"
    else:
        result = "Obese"
