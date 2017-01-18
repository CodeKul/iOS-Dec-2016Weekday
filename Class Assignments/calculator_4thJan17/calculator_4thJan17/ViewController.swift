//
//  ViewController.swift
//  calculator_4thJan17
//
//  Created by Varun on 05/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var txt1: UITextField!
    @IBOutlet var txt2: UITextField!
    @IBOutlet var myLbl: UILabel!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
   
        /*
        txt1 = UITextField (frame: CGRect(origin: CGPoint(x: 10, y:30), size: CGSize(width: self.view.frame.size.width - 20, height: 30)))
        
            txt1!.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            txt1!.borderStyle = .roundedRect
            self.view.addSubview(txt1!)
           
        txt2 = UITextField (frame: CGRect(origin: CGPoint(x: 10, y: 70),size : CGSize(width: self.view.frame.size.width - 20, height: 30)))
        
            txt2!.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            txt2!.borderStyle = UITextBorderStyle.roundedRect
                self.view.addSubview(txt2!)
        
        myLbl = UILabel (frame: CGRect(origin: CGPoint(x: 40, y: 110), size: CGSize(width: self.view.frame.size.width - 80, height: 30)))
        myLbl!.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        myLbl?.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        myLbl?.textAlignment = .center
        self.view.addSubview(myLbl!)
        
        let addBtn = UIButton(frame: CGRect(x: 10, y: 150, width: 67.3 , height: 30))
            addBtn.setTitle("ADD", for: .normal)
            addBtn.addTarget(self, action: #selector(self.addBtnClicked), for:.touchUpInside)
            addBtn.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
            self.view.addSubview(addBtn)
        
        let subBtn = UIButton(frame: CGRect(x: 87, y: 150, width: 67.3 , height: 30))
            subBtn.setTitle("SUB", for: .normal)
        subBtn.addTarget(self, action: #selector(self.subBtnClicked), for:.touchUpInside)
            subBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            self.view.addSubview(subBtn)
        
        let mulBtn = UIButton(frame: CGRect(x: 164, y: 150, width: 67.3, height: 30))
            mulBtn.setTitle("MUL", for: .normal)
            mulBtn.addTarget(self, action: #selector(self.mulBtnClicked), for:.touchUpInside)
            mulBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            self.view.addSubview(mulBtn)
        
        let divBtn = UIButton(frame: CGRect(x: 241, y: 150, width: 67.3, height: 30))
            divBtn.setTitle("DIV", for: .normal)
        divBtn.addTarget(self, action: #selector(self.divBtnClicked), for: .touchUpInside)
        divBtn.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        self.view.addSubview(divBtn)
        
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        */
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addBtnClicked(_ sender: Any) {
        let addition = Float(txt1!.text!)! + Float(txt2!.text!)!
        myLbl!.text = "\(addition)"
    }
    @IBAction func subBtnClicked(_ sender: Any) {
        let substraction = Float(txt1!.text!)! - Float(txt2!.text!)!
        myLbl!.text = "\(substraction)"
    }
    @IBAction func mulBtnClicked(_ sender: Any) {
        let multiplication = Float(txt1!.text!)! * Float(txt2!.text!)!
        myLbl!.text = "\(multiplication)"
    }
    @IBAction func divBtnClicked(_ sender: Any) {
        let division = Float(txt1!.text!)! / Float(txt2!.text!)!
        myLbl!.text = "\(division)"
    }
    
    /*
    func addBtnClicked () {
        let addition = Float(txt1!.text!)! + Float(txt2!.text!)!
        myLbl!.text = "\(addition)"
    }
    
    func subBtnClicked () {
        let substraction = Float(txt1!.text!)! - Float(txt2!.text!)!
        myLbl!.text = "\(substraction)"
    }
    
    func mulBtnClicked () {
        let multiplication = Float(txt1!.text!)! * Float(txt2!.text!)!
        myLbl!.text = "\(multiplication)"
    }
    
    func divBtnClicked () {
        let division = Float(txt1!.text!)! / Float(txt2!.text!)!
        myLbl!.text = "\(division)"
    }
    */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

