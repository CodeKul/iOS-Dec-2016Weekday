//
//  ViewController.swift
//  iOSdemo_3rdJanMD
//
//  Created by Varun on 04/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print ("viewDidLoad")
        
        let frame = CGRect(x: 10.0, y: 30.0, width: 67.5, height: 528.0)
        let myFirstView = UIView (frame: frame)
        myFirstView.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        self.view.addSubview(myFirstView)
        
        let mySecView = UIView(frame: CGRect(x: frame.origin.x + frame.size.width + 10.0, y: 30.0, width: frame.size.width, height: frame.size.height))
        mySecView.backgroundColor = UIColor.blue
        self.view.addSubview(mySecView)
        
        let myThirdView = UIView(frame: CGRect(origin: CGPoint(x: mySecView.frame.origin.x + mySecView.frame.size.width + 10.0, y: mySecView.frame.origin.y ), size: mySecView.frame.size))
        myThirdView.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        
        self.view.addSubview(myThirdView)
        
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

