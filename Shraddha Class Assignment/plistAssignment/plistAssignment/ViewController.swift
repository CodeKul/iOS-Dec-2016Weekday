//
//  ViewController.swift
//  plistAssignment
//
//  Created by Codekul on 07/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "studData", ofType: "plist")
        let stud = NSDictionary(contentsOfFile: path!)
        
        print("Name: \(stud?["Name"])\nRno: \(stud?["RollNo"])\nMarks: \(stud?["Mark"])\n")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

