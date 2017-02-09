//: Playground - noun: a place where people can play

import UIKit

class ComplexNo {
    
    var real : Int
    var imaginary : Int
    var dinominator = 0
    
    init() {
        self.real = 0
        self.imaginary = 0
    }
    
    init(real : Int, imaginary: Int) {
        self.real = real
        self.imaginary = imaginary
    }
    
    func setReal(real: Int) {
        self.real = real
    }
    
    func getReal() -> Int {
        return self.real
    }
    
    func setImaginary(imaginary : Int) {
        self.imaginary = imaginary
    }
    
    func getImaginary() -> Int {
        return self.imaginary
    }
    
    func addition ( otherComplexNo : ComplexNo ) -> ComplexNo {
        
        // (a + bi) + (c + di) = (a + c) + (b + d)i 
        
        let resultNo = ComplexNo()
        
        resultNo.real = self.real + otherComplexNo.real
        resultNo.imaginary = self.imaginary + otherComplexNo.imaginary
        
        return resultNo
    }
    
    func multiplication (otherComplexNo : ComplexNo) -> ComplexNo {
        
        //  (a + bi) * (c + di) = ac + adi + bci - bd
        //                      = (ac-bd) + (ad + bc)i
        //                      = ((a * c) - (b * d)) + ((a * d) + (b * c))i
    
        let resultNo = ComplexNo()

    
        resultNo.real = (self.real * otherComplexNo.real) - (self.imaginary * otherComplexNo.imaginary)
        resultNo.imaginary = (self.real * otherComplexNo.imaginary) + (self.imaginary * otherComplexNo.real)
        
        
        return resultNo
    }
    func division(otherComplexNo : ComplexNo) -> ComplexNo {
        //(ac-bd)+(ad+bc)i/cc+dd
        
       let resultNo = ComplexNo()
        
        resultNo.real = (self.real * otherComplexNo.real) - (self.real * otherComplexNo.real)
        
        resultNo.imaginary = (self.imaginary * otherComplexNo.imaginary) + (self.imaginary * otherComplexNo.imaginary)
        
        resultNo.dinominator = (self.real * otherComplexNo.real) + (self.real * otherComplexNo.real)
        
        
        
        
        return resultNo
    
    }
    
    
    func displayNo() {
        
        var resStr = "\(self.real) + \(self.imaginary)i"
        
        if self.dinominator != 0 {
            resStr.append(" / \(self.dinominator)")
        }
        
        print(resStr)
    }
}


var cn1 = ComplexNo(real: 2, imaginary : 3)
var cn2 = ComplexNo(real: 4, imaginary : 2)

cn1.displayNo()
cn2.displayNo()

//var cn3 = cn1.multiplication(otherComplexNo: cn2)
var cn3 = cn1.division(otherComplexNo: cn2)

cn3.displayNo()















