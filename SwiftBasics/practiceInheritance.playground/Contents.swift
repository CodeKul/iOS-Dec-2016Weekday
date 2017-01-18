//: Playground - noun: a place where people can play

import UIKit

class Student {
    
    var Name : String
    var age  : Int
    
    init(Name : String , age : Int) {
        self.Name = Name
        self.age  = age
    }
    func info()  {
       if age > 20
       {
        print("Master Degree")
        }
        else
       {
        print("Batchlor Degree")
        }
    }
    func  Displayinfo() {
        print("Master degree for addmission  seats have limited")
    }
}

class Commerce :Student {
    
   /* func info()  {
        print("master Degree")
    }*/
}

class Engg : Student {
    
   /* func info()  {
        print("Batchlor Degree")
    }*/
    
}

var stdComm = Commerce (Name: "abc", age: 24)
stdComm.Name
stdComm.age
stdComm.info()
stdComm.Displayinfo()


var enggStud = Engg (Name: "XYZ", age: 20)
enggStud.Name
enggStud.age
enggStud.info()

