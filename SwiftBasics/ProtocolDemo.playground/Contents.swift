//: Playground - noun: a place where people can play

import UIKit

protocol myPtotocol {
    
    func printName();
    
}

class myClass1 {
    
    var delegate:myPtotocol! = nil
    
    func callDelegateMethod() {
        
        delegate.printName()
    }
    
}

class myClass2 : myPtotocol {
    
    internal func printName() {
        print("Codekul")
    }
}


var obj1 = myClass1()

var obj2 = myClass2()

obj1.delegate = obj2

obj1.callDelegateMethod()










