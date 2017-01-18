//: Playground - noun: a place where people can play

import UIKit

var myFirstVar : Int

myFirstVar = 45;

var secondVar : Double = 50

secondVar = 6.7

var float : Float = 3.2

float

var result : Float = Float(myFirstVar) + Float(secondVar) + float


//Operators

var a = 2.0

var b = 8.2

var d = 3.0

var c  = Double( Float(a) + Float (b) )  // a + b

var str = "Code" + "Kul"

//c = a - b

//c = a * b

//c = a / b

//c = b % a

c =  a + b / d

c = b*d/a
c = a + (b-d)

var res : Float = Float(a) + Float(b)

//Generics

//AnyObject
//AnyClass
//Any

var anyObject:AnyObject = 100 as AnyObject

anyObject = "codekul" as AnyObject


//Tuples

var myTuple = (12, "str",78.99)

var myNewTuple = (string:"str", integer:34)
myNewTuple.integer
myNewTuple.string