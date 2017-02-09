//: Playground - noun: a place where people can play

import UIKit

//Loops

//Range

var range1 = 1..<10
var range2 = 1...10

var array = [1,5,88,22,99,44,55]

for element in array {
    print(element)
}

print()

for element in range2 {
    print(element)
}

print()

var a = 9

while a < 10 {
    print(a)
    a += 1
}

print()

a = 9
repeat {
    
    print(a)
    a += 1
} while (a < 10)

//if statement

a = 14
if a == 10 {
    print("a is equal to 10")
}
else if a == 12 {
    print("a is equal to 12")
}
else {
    print("a is niether equal to 10 nor 12")
}

var myValue1 = -20
var myValue2 = 10

if myValue1 == myValue2 {
    print("both the values are same")
}
else {
    if myValue1 < myValue2 {
        print("myValue1 is less than myValue2")
    }
    else {
        print("myValue2 is less than myValue1")
    }
}

print()

var myValues = [23,25,98,45,76,21,0,93,29,15]

for element in myValues
{
    if element == 0 {
        break
    }
    if element % 2 == 0 {
        continue
    }
    print (element)
}

print()

var myVar = 3

switch myVar {
    case 0:
        print("Zero")
    case 1:
        print("One")
    case 2:
        print("Two")
    case 3:
        print("Three")
        fallthrough
    case 4:
        print("Four")
        fallthrough
    case 5:
        print("Five")
    case 6:
        print("Six")
    case 7:
        print("Seven")
    case 8:
        print("Eight")
    case 9:
        print("Nine")
    default:
        print("Not a number")
}











