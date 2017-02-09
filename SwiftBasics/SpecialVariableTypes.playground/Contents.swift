//: Playground - noun: a place where people can play

import UIKit

//Generics

//AnyObject
//AnyClass
//Any

var myAnyObject : AnyObject = 100 as AnyObject

myAnyObject = "str" as AnyObject

myAnyObject = String() as AnyObject

myAnyObject = 12.34 as AnyObject

var myarr : Array<AnyObject> = [12 as AnyObject, 455.78 as AnyObject, "str" as AnyObject]

var myAny : Any = 100

myAny = "myStr"

//tuple

var myTuple = (12,45.67,78,"Manish",898,"Shraddha")

myTuple.5

myTuple = (32,67.8,5,"Str1",56, "Str2")

var myNewTuple = (string: "str1", number: 35, anyObj:myAny)


//Optionals
var str : String = myNewTuple.anyObj as! String

// !
// ?

var myStr : String? = "str"

myStr = nil

var str1 = myStr

str1



//Assertion

var age = 200;

assert(age > 0, "Age should greater than 0")

var result = 100/age


//Type Alias

typealias NAME = String

var myString : NAME = "myString"

typealias MYDOUBLE = Float

var myDouble : MYDOUBLE = 12.8

myDouble








		
