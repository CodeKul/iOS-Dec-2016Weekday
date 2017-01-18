//
//  ViewController.swift
//  SliderAssignment
//
//  Created by Varun on 10/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenslider: UISlider!
    
    @IBOutlet var blueslider: UISlider!
    
    @IBOutlet var alphaSlider: UISlider!
    
    @IBOutlet var redLbl: UILabel!
    @IBOutlet var greenLbl: UILabel!
    @IBOutlet var blueLbl: UILabel!
    @IBOutlet var alphalbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
        
    @IBAction func sliderValuechanged(_ sender: UISlider) {
        
       /* myLbl.text = "\(sender.value)"
        
        self.view.backgroundColor = UIColor.init(colorLiteralRed: 150.0/255.0, green: 62.0/255.0, blue: 68/255.0, alpha: 1)*/
        
        
        
    }
        
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

