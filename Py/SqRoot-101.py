from ast import literal_eval
# 18/9/21 Nev Goodyer - basic working version - rounding as in question
number = float(input("Enter the number you want the square root of: "))
decPlaces = int(input("Enter the number of decimal places of accuracy: "))
minimum = 0
maximum = number
middle = (minimum + maximum) / 2
accuracy = 10 ** (-1 * decPlaces)
while abs((middle * middle) - number) > accuracy:
    if middle * middle > number:
        maximum = middle
    else:
        minimum = middle
    middle = (minimum + maximum) / 2
middle = int(middle / accuracy) * accuracy  # accuracy rounding as in question
#middle = round(middle,decPlaces)
print(middle)
print("The square root of ", number, " to ", decPlaces, " decimal places is ", middle)
