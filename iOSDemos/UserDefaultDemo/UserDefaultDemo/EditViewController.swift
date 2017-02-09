//
//  EditViewController.swift
//  UserDefaultDemo
//
//  Created by Codekul on 01/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtDOB : UITextField!
    @IBOutlet var txtCity : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonPressed(_ sender : UIButton) {
        
        let UD = UserDefaults()
        UD.set(txtName.text, forKey: "Name")
        UD.set(txtDOB.text, forKey: "DOB")
        UD.set(txtCity.text, forKey: "City")
        
        UD.synchronize()
        
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
