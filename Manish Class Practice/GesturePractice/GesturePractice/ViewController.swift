//
//  ViewController.swift
//  GesturePractice
//
//  Created by Codekul on 01/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    let swipeGesture = UISwipeGestureRecognizer(target: self, action:
            #selector(self.leftSwiped))
       swipeGesture.direction = .right
        view1.addGestureRecognizer(swipeGesture)
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.view1tapped))
        tapGesture.numberOfTapsRequired = 3
        view2.addGestureRecognizer(tapGesture)
        
    }
    
    func leftSwiped() {
        view1.backgroundColor = UIColor.red
        
    }
    func view1tapped(){
        view2.backgroundColor = UIColor.green
    }
 
    @IBAction func longPressGestureMethod(_ sender: Any) {
        view4.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

