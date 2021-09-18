from ast import literal_eval
# 18/9/21 Nev Goodyer - added line 10 & 18 print statements for the iterations
number = float(input("Enter the number you want the square root of: "))
decPlaces = int(input("Enter the accuracy in number of decimal places: "))
minimum = 0
maximum = number
middle = (minimum + maximum) / 2
accuracy = 10 ** (-1 * decPlaces)
loopNum = 1
print("Loop ", loopNum," middle = ", middle)
while abs((middle * middle) - number) > accuracy:
    if middle * middle > number:
        maximum = middle
    else:
        minimum = middle
    middle = (minimum + maximum) / 2
    loopNum += 1
    print("Loop ", loopNum," middle = ", middle)
middle = int(middle / accuracy) * accuracy
print("The square root of ", number, " to ", decPlaces, " decimal places is ", middle)
