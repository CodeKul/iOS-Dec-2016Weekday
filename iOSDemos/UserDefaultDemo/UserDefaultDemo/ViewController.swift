//
//  ViewController.swift
//  UserDefaultDemo
//
//  Created by Codekul on 01/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblName : UILabel!
    @IBOutlet var lblDOB : UILabel!
    @IBOutlet var lblCity : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let UD = UserDefaults()

        let strName = UD.value(forKey: "Name")
        let strDOB = UD.value(forKey: "DOB")
        let strCity = UD.value(forKey: "City")
        
        if strName != nil {
            lblName.text = strName as! String?
        }
        if strDOB != nil {
            lblDOB.text = strDOB as! String?
        }
        if strCity != nil {
            lblCity.text = strCity as! String?
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

