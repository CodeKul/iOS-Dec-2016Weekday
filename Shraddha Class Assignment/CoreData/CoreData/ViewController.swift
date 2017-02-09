//
//  ViewController.swift
//  CoreData
//
//  Created by Codekul on 09/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //storing Core Data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newUser = NSEntityDescription.insertNewObject(forEntityName:"User" , into:context)
        newUser.setValue("Jhon",value(forKey: "userName"))
        newUser.setValue("jhon123",value(forKey: "Password"))

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

