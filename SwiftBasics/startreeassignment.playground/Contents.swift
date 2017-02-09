//: Playground - noun: a place where people can play

import UIKit

var row  = 5
var col = 5
var i = 0
var j = 0

while i < col {

    var arr = ""
    j = 0
    while j < i + 1// 5 times iterate values
    {
        arr.append("*")
        j += 1 //col value
    }
    print(arr)
    i += 1//range of row
}

func myFunc(names: String...)
{
    print(names.count)
}

myFunc(names: "xyz","zxcv","werty")

var name1 = "Mr. Potato"
var name2 = "Mr. Roboto"

func nameSwap( name1: inout String, name2: inout String) {
    let oldName1 = name1
    name1 = name2
    name2 = oldName1
}

nameSwap(name1: &name1, name2: &name2)

name1
// Mr. Roboto

name2
// Mr. Potato


var name = "Mr. Roboto"

func appendNumbersToName( name: String, maxNumber: Int) -> String {
    var name = name
    for i in 0..<maxNumber {
        name += String(i + 1)
    }
    return name
}

appendNumbersToName(name: name, maxNumber:5)

