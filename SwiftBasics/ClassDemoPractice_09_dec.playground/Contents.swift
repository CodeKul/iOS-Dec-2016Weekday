//: Playground - noun: a place where people can play

import UIKit

class Guitars {
   
    var color : String = "Wood Finish"
    var type :String = "Acoustic"
    var isElectric : Bool = true

    init(){
        
        self.color = "Wood Finish"
        self.type = "Acoustic"
    }
    
    init(color : String) {
        self.color = color
    }
    
    init(type : String) {
        if type == "Acoustic" {
            isElectric = false
        }
        else{
            isElectric = true
        }
    self.type = type
    }
    
    init(color : String, type : String) {
        self.color = color
        self.type = type
        
    }
    
    func setColor(color : String) {
        self.color = color
    }
    func getColor() -> String {
        return self.color
    }
    
    func setType(type: String) {
        self.type = type
     
    }
    
    func getType() -> String {
        return self.type
    }
}

var myGuitar = Guitars()
myGuitar.setColor(color: "Black")
myGuitar.getColor()
myGuitar.setType(type: "ELECTRO ACOUSTIC")
myGuitar.getType()

var myClassicGuitar = Guitars()
myClassicGuitar.setColor(color: "RoseWood")
myClassicGuitar.getColor()



let textToPrint = "123456789"
print(String(textToPrint.characters.reversed()))


