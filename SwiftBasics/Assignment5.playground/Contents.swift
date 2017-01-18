//: Playground - noun: a place where people can play

import UIKit

/*
 Write a programm to demonstrate Inheritance 
 
 Shape -> Square
 Shape -> Rectangle
 
 create sideA, sideB variables in class Shape
 add method in class Square to calulate area
 add method in class Rectangle to calculae area
 
 */

class Shape {   //BASE class
    var sideA : Int
    var sideB : Int
    //var height : Int
    init(radius: Int) {
        self.sideA = radius // constructor
        self.sideB = 0
    }
    
    init(sideA : Int , sideB : Int) {
        
        self.sideA = sideA   //parameterised constructor
        self.sideB = sideB
    }
  
    func area() {
        print(sideA * sideB)
    }
}
// sub class inherite super class

class Rectangle : Shape {
//sub class
}

class Squre : Rectangle {
    //sub class
}

class Circle : Shape {
    
    override func area() {
        print(3.14 * Double(sideA) * Double(sideA))
    }
}

class Triangle : Shape {
    
    override func area() {
        print(0.5 * Double(sideA) * Double(sideB))
    }
}

class Trapezium : Shape {
    override func area() {
        print(0.5 * Double(sideA) + Double(sideA) * Double(sideB))
    }
}

// call constructor
var mySqure = Squre(sideA : 5 ,sideB : 5)
mySqure.area()

var myRectangle = Rectangle(sideA : 4, sideB : 3)
myRectangle.area()

var myCircle = Circle(radius: 37)
myCircle.area()

var myTriangle = Triangle(sideA: 30, sideB: 12)
myTriangle.area()

//var myTrapezium = Trapezium(sideA : 4 ,sideB : 2)
//myTrapezium.area()

var myTrapezium = Trapezium(sideA: 3, sideB: 9)
myTrapezium.area()










