//
//  ViewController.swift
//  plistAssignment2
//
//  Created by Codekul on 07/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "empData", ofType: "plist")
        let empDict = NSDictionary(contentsOfFile: path!)
        
       // let arrData = empDict?["data"] as! Array<Dictionary<String,Any>>
       let arr = empDict?["Emplyoee"] as! Array<Dictionary<String,Any>>
    
        for employeeInfo in arr {
        
        print("Name: \(employeeInfo["Name"])\nDesignation: \(employeeInfo["Designation"])\nQulification: \(employeeInfo["Qulification"])\n")
            //employeeInfo[String :empDict]
        }
        
        //print("Name: \(empDict?["Name"])\nDesignation: \(empDict?["Designation"])\nQulification: \(empDict?["Qulification"])\n")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

