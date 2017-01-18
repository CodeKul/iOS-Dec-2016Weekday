//: Playground - noun: a place where people can play

import UIKit

// Class

class Car {
    
    var color : String = "Red"
    var type : String = "Sports"
    
    var isAutomatic : Bool = true
    
    
    init() {                        //Default constructor
//        self.color = "Red"
//        self.type = "Normal"
    }
    
    init(color : String) {          //Parameterised constructor
        self.color = color
    }
    
    init(type : String) {
        if type == "Normal" {
            isAutomatic = false
        }
        else {
            isAutomatic = true
        }
        self.type = type
    }
    
    init(color : String, type : String) {
        self.color = color
        self.type = type
        if type == "Normal" {
            isAutomatic = false
        }
        else {
            isAutomatic = true
        }
    }
 
    func setColor(color : String) {
        self.color = color
    }
    func getColor() -> String {
        return self.color
    }
    
    func setType(type: String) {
        self.type = type
        if type == "Normal" {
            isAutomatic = false
        }
        else {
            isAutomatic = true
        }
    }
    
    func getType() -> String {
        return self.type
    }
}

var myCar = Car()       //Constructor call

myCar.setColor(color: "Blue")
myCar.getColor()

myCar.getType()

myCar.color = "Brown"
myCar.getColor()

var pinkCar = Car(color : "Pink")

pinkCar.color

var whiteCar = Car(color : "White")

whiteCar.getColor()

var myNewCar = Car(color : "Black", type : "Sports")

myNewCar.getColor()

myNewCar.getType()
myNewCar.setType(type: "Sports")

var strAutomatic = myNewCar.isAutomatic ? "" : "Not"

print("Look at my new \(myNewCar.getColor()) \(myNewCar.getType()) car, this car is \(strAutomatic) Automatic")

var myTypeCar = Car(type : "Classic")

myTypeCar.getType()


// ASSIGNMENT 4
// what are Complex no ?
//Create a class with name " complex no " , there will be two member variables real and imaginary .Then find out ADD,MUL,DIV,SUB is done here.


		
