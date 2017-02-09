//
//  ViewController.swift
//  BasicControls
//
//  Created by Varun on 04/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var myLbl : UILabel?
//    var txt1 : UITextField?
//    var txt2 : UITextField?
    
    @IBOutlet var myLbl : UILabel!
    @IBOutlet var mySlider : UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
/*
         txt1 = UITextField(frame: CGRect(origin: CGPoint(x:10 ,y: 189), size: CGSize(width: self.view.frame.size.width - 20, height: 30)))

        txt1!.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        txt1!.borderStyle = .roundedRect
        self.view.addSubview(txt1!)
        
         txt2 = UITextField(frame: CGRect(origin: CGPoint(x:10 ,y: 229), size: CGSize(width: self.view.frame.size.width - 20, height: 30)))
        txt2!.borderStyle = .roundedRect
        self.view.addSubview(txt2!)
        txt2!.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)

        
        
        let myBtn = UIButton(frame: CGRect(x: 100, y: 269, width: 120, height: 30))
        myBtn.setTitle("This is Button", for: .normal)
        
        myBtn.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside)
        myBtn.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        self.view.addSubview(myBtn)
        
       myLbl = UILabel(frame: CGRect(origin: CGPoint(x: 10, y: myBtn.frame.origin.y + myBtn.frame.size.height + 10), size: CGSize(width: self.view.frame.size.width - 20, height: 30)))
        
        myLbl!.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        myLbl!.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        myLbl!.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        myLbl!.text = "myText Label"
        
        myLbl!.textAlignment = .center
        
        self.view.addSubview(myLbl!)
 */
    }
    
//    func buttonClicked() {
//
//        let result = Int(txt1!.text!)! + Int(txt2!.text!)!
//        myLbl!.text = "\(result)"
//        
//    }
    
    @IBAction func sliderValueChanged (_ sender: UISlider) {
        
        myLbl.text = "\(sender.value)"
        
        self.view.backgroundColor = UIColor.init(colorLiteralRed: 150.0/255.0, green: 62.0/255.0, blue: 68/255.0, alpha: 1)
    }

    @IBAction func switchValueChanged (_ sender: UISwitch) {
        
        if sender.isOn {
            mySlider.isUserInteractionEnabled = true
        }
        else {
            mySlider.isUserInteractionEnabled = false
        }
    }

    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0{
            self.view.backgroundColor = .red
        }
        else if sender.selectedSegmentIndex == 1 {
            self.view.backgroundColor = .green
        }
        else {
            self.view.backgroundColor = .blue
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

