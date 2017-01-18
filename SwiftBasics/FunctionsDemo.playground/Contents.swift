//: Playground - noun: a place where people can play

import UIKit


//Functions

let myArray = [34,7,897,34,90,3,88,3]

func sumOf(array : Array<Int> , message : String) -> String {
    
    var sum = 0
    
    for element in array {
        sum += element
    }

    let returnStr : String? = "\(message) \(sum)"
    
    return returnStr!
}

var str = sumOf(array: myArray, message: "Sum of all elements from array is")

print(str)








