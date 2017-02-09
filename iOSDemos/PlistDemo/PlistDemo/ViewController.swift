//
//  ViewController.swift
//  PlistDemo
//
//  Created by Codekul on 07/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "studentinfo", ofType: "plist")
        let rootDict = NSDictionary(contentsOfFile: path!)
        
        let arrData = rootDict?["data"] as! Array<Dictionary<String
            , Any>>
    
        for studDict in arrData {
            print("Name: \(studDict["Name"])\nRno: \(studDict["Rno"])\nMarks: \(studDict["Marks"])\n")
        }
        
        let arr = NSArray(array: ["Name1", "Name2", "Name3"])
        
        arr.write(toFile: path!, atomically: true)
        
        print(path!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

