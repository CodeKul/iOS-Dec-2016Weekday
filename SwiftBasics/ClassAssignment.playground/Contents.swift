//: Playground - noun: a placeWherePeopleCanPlay

import UIKit

class Birds{
    
    var color : String =  "Green"
    var type  : String =  "Sound effects"
   
    
    init() {
        //Default constructor
    }
    init(color : String, type : String){
        
        self.color = color //prameterised constructor
        self.type  = type
    }
    
    //create a function stter and getter method
    
    func setColor(color : String )  {
     self.color = color
    }
    func getColor() -> String  {
       return self.color
        
    }
    func setType(type : String)  {
        self.type = type
        
    }
    func getType() -> String {
        return self.type
    }
    
    
}


var myBirds = Birds()//constructor call


//function call
myBirds.setColor(color:"Green")
myBirds.getColor()

myBirds.setType(type: "abbbcc")
myBirds.getType ()

myBirds.setColor(color: "Black")
myBirds.getColor()




