//
//  ViewController.swift
//  calculater
//
//  Created by Varun on 05/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myLbl : UILabel?
    var txt1 :UITextField?
    var txt2 :UITextField?
    var addBtn :UIButton?
    var subBtn :UIButton?
    var mulBtn :UIButton?
    var divBtn :UIButton?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*txt1 = UITextField (frame: CGRect(origin: CGPoint(x: 10, y:30), size: CGSize(width: self.view.frame.size.width - 20, height: 30)))*/

        txt1 = UITextField(frame: CGRect(origin: CGPoint(x:10,y:30), size:CGSize(width: self.view.frame.size.width-20, height: 30)))
        txt1!.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        txt1!.borderStyle = .roundedRect
        self.view.addSubview(txt1!)
        
        txt2 = UITextField(frame: CGRect(origin: CGPoint(x: 10, y:70),size: CGSize(width: self.view.frame.size.width-20, height: 30)))
        txt2!.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        txt2!.borderStyle = .roundedRect
        self.view.addSubview(txt2!)
        
        
        myLbl = UILabel(frame: CGRect(origin: CGPoint(x:10,y:110), size: CGSize(width: self.view.frame.size.width - 20, height: 30)))
        myLbl?.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        self.view.addSubview(myLbl!)
        
       /*
         let frame = CGRect(x: 10.0, y: 30.0, width: 67.5, height: 528.0)
         let myFirstView = UIView (frame: frame)
         myFirstView.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
         self.view.addSubview(myFirstView)
         
         let mySecView = UIView(frame: CGRect(x: frame.origin.x + frame.size.width + 10.0, y: 30.0, width: frame.size.width, height: frame.size.height))
         mySecView.backgroundColor = UIColor.blue
         self.view.addSubview(mySecView)

         UIButton(frame: CGRect(origin: CGPoint(x:10,y:150), size: CGSize(width: self.view.frame.width - 203, height: 30)))
         */
        
        //with help of reference
        
        let frame = CGRect(x: 10, y: 150, width: 67.5, height: 30)
        let addBtn = UIButton (frame : frame)
            addBtn.setTitle("ADD", for: .normal)
            addBtn.addTarget(self, action: #selector(self.addBtnclk), for: .touchUpInside)
            addBtn.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            self.view.addSubview(addBtn)
        
        
        subBtn = UIButton(frame: CGRect(x: frame.origin.x + frame.size.width + 10 ,y:150,width : frame.size.width, height: frame.size.height ))
        subBtn!.setTitle("SUB", for: .normal)
        subBtn!.addTarget(self, action: #selector(self.subBtnclk), for: .touchUpInside)
        subBtn!.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        self.view.addSubview(subBtn!)
        
        //here use in optional..?
        mulBtn = UIButton(frame:CGRect(origin: CGPoint(x:(subBtn?.frame.origin.x)! + (subBtn?.frame.size.width)! + 10,y:(subBtn?.frame.origin.y)!),size:(subBtn?.frame.size)!))
        mulBtn!.setTitle("MUL", for: .normal)
        mulBtn!.addTarget(self, action: #selector(self.mulbtnclked), for: .touchUpInside)
        mulBtn?.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        self.view.addSubview(mulBtn!)
        
        divBtn = UIButton(frame: CGRect(origin: CGPoint(x:(mulBtn?.frame.origin.x)!+(mulBtn?.frame.size.width)!+10,y:(mulBtn?.frame.origin.y)!), size: (mulBtn?.frame.size)!))
        divBtn!.setTitle("DIV", for: .normal)
        divBtn!.addTarget(self, action: #selector(divBtnclked), for: .touchUpInside)
        divBtn!.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        self.view.addSubview(divBtn!)
        
    // Do any additional setup after loading the view, typically from a nib.
    }
    func addBtnclk()  {
        
        let add = Float(txt1!.text!)! + Float(txt2!.text!)!
        myLbl!.text = "\(add)"
    }
    func subBtnclk()  {
        let sub = Float(txt1!.text!)! - Float(txt2!.text!)!
        myLbl!.text = "\(sub)"

    }
    func mulbtnclked () {
        let mul = Float(txt1!.text!)! * Float(txt2!.text!)!
        myLbl!.text = "\(mul)"

    }
    func divBtnclked()  {
        let div = Float(txt1!.text!)! / Float(txt2!.text!)!
        myLbl!.text = "\(div)"

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

