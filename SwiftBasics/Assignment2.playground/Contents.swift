//: Playground - noun: a place where people can play

import UIKit

// 1) Write a programm to find second max number from array

// 2) Write a programm to find second min number from array

// 3) Write a programm to create 2D array


//1

var arr = [9,4,13,3,11,1,33,8,15]
var max = arr[0]
var secMax = max
var sortedArr = arr.sorted()
sortedArr[sortedArr.count-2] // it is written for to find the index in the array

var sortedArray = arr.sorted()
sortedArray[1]
for num in arr
{
    if num>max
    {
        secMax=max
        max=num
        
    }
    else if num>secMax{
        secMax=num
    }
    
    
}
max
secMax
var min = arr[0]
var secMin = min
for no in arr

{
    if no<min
    {   secMin = min
        min=no
    }
    else if no<secMin{
        secMin=no
        
    }
}
min
secMin


 //2D Array



