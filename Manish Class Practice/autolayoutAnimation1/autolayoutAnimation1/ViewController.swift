//
//  ViewController.swift
//  autolayoutAnimation1
//
//  Created by Codekul on 30/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottonConstraint: NSLayoutConstraint!
    var isMenuOpen = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func doAnimate(_ sender: Any) {
        if isMenuOpen {
            bottonConstraint.constant = -400
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
                self.view.layoutIfNeeded()
            }) { (true) in
                self.isMenuOpen = false
            }
            
        }
        else{
            bottonConstraint.constant = 0
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
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

