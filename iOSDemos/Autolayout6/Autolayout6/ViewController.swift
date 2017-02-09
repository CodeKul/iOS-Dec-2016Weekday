//
//  ViewController.swift
//  Autolayout6
//
//  Created by Codekul on 30/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var isMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func menuButtonClicked(_ sender: Any) {
       
        if isMenuOpen {
            //close
            
            leadingConstraint.constant = -240
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            }) { (true) in
                self.isMenuOpen = false
            }
        }
        else {
            //open
            
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            }) { (true) in
                self.isMenuOpen = true
            }
        }
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

