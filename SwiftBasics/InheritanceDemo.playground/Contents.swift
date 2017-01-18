//: Playground - noun: a place where people can play

import UIKit

class Car {

    var numWheels = 4
    var numSeats = 5
    
    func moveForward() {
        print("Car is moving forward")
    }
    func moveBackward() {
        print("Car is moving backward")
    }
    func turnLeft() {
        print("Car is turning left")
    }
    func turnRight() {
        print("Car is turning right")
    }
}

class SportsCar : Car {
    
    var numDoors = 2
    
    func goFast() {
        print("Car is Going fast")
    }
    override func moveBackward() {
        super.moveBackward()
        print("Sports Car is moving backward")
    }
}

var ferrari = SportsCar()

ferrari.numDoors
ferrari.numSeats
ferrari.numWheels

ferrari.turnLeft()
ferrari.goFast()
ferrari.moveBackward()

var wagonR = Car()

wagonR.moveForward()









