//
//  FirstViewController.swift
//  Navigation
//
//  Created by Varun on 21/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var txtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let FVC = segue.destination as! SecondViewController
        FVC.strData = txtField.text
        //FVC.strData = "Demo"
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
