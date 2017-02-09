//
//  ViewController.swift
//  ScollViewDemo
//
//  Created by Varun on 12/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myContentView : UIView!
    
    @IBOutlet var myScollView : UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myScollView.contentSize = myContentView.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

