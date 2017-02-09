//
//  LoginViewController.swift
//  UserDefaultAssignment1
//
//  Created by Codekul on 01/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtContcatNo: UITextField!
    @IBOutlet weak var txtSetPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func saveBtnClicked(_ sender: UIButton) {
        
        let userD = UserDefaults()
        userD.set(txtName.text, forKey: "Name")
        userD.set(txtCity.text, forKey: "City")
        userD.set(txtContcatNo.text, forKey: "ContactNo")
        userD.set(txtSetPassword.text, forKey: "Password")
        
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
