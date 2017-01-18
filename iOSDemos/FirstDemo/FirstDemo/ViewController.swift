//
//  ViewController.swift
//  FirstDemo
//
//  Created by Varun on 15/12/16.
//  Copyright © 2016 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        
        let frame = CGRect(x:10 , y: 30, width: 300, height: 50)
        let myView = UIView(frame: frame)
        myView.backgroundColor = UIColor.blue
        self.view.addSubview(myView)
        
        let myNewView = UIView(frame: CGRect(x: 10, y: frame.origin.y + frame.size.height + 10, width: frame.size.width, height: frame.size.height))
        myNewView.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        self.view.addSubview(myNewView)
        
        let myThirdView = UIView(frame: CGRect(origin: CGPoint(x: myNewView.frame.origin.x, y: myNewView.frame.origin.y + myNewView.frame.size.height + 10), size: myNewView.frame.size))
        
        myThirdView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        self.view.addSubview(myThirdView)
        
        let myForthview = UIView(frame: CGRect(origin: CGPoint(x: myThirdView.frame.origin.x, y: myThirdView.frame.origin.y + myThirdView.frame.size.height + 10), size: myThirdView.frame.size))
        myForthview.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        self.view.addSubview(myForthview)
        
        let myFifthview = UIView(frame: CGRect(origin: CGPoint(x: myForthview.frame.origin.x, y: myForthview.frame.origin.y + myForthview.frame.size.height + 10), size: myForthview.frame.size))
        myFifthview.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        self.view.addSubview(myFifthview)
        
        self.view.backgroundColor = #colorLiteral(red: 0.8194370321, green: 0.9896543969, blue: 1, alpha: 1)

    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

