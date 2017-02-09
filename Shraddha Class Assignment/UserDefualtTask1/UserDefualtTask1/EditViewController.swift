//
//  EditViewController.swift
//  UserDefualtTask1
//
//  Created by Codekul on 01/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDOB: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   

    @IBAction func saveButtonClicked(_ sender: UIButton) {
        
        let userD = UserDefaults()
        //set value to textfeild
        userD.set(txtName.text, forKey: "Name")
        userD.set(txtDOB.text, forKey: "DOB")
        userD.set(txtCity.text, forKey: "City")
        
        userD.synchronize()
        self.dismiss(animated: true, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
