//: Playground - noun: a place where people can play

import UIKit


// 1) Create a function to calculate sum of odd numbers from an array

// 2) Create a function to calculate sum of even numbers from an array

// 3) Create a function to get string in parameter and return the reversed string


//1


let myArray : Array = [1,2,3,4,5,6,7,8,9]

func sumOfOdd(array : Array<Int>)
{
    var sum = 0
    for oddno in array{
        
        if oddno % 2 == 1
        {
          sum += oddno
            
        }
    }
    print(sum)
}

//2

func sumOfeven(array : Array<Int>)
{
    var sum = 0
    for evenno in array{
        
        if evenno % 2 == 0
        {
            sum += evenno
        }
    }
    print(sum)
}


sumOfOdd(array: myArray)

sumOfeven(array: myArray)



//3

let myString = "CODEKUL"
let reversed = String(myString.characters.reversed())
print()
print(reversed)






