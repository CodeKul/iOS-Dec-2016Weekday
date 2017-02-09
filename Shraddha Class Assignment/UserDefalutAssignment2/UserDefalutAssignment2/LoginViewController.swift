//
//  LoginViewController.swift
//  UserDefalutAssignment2
//
//  Created by Codekul on 02/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var contactnoTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func okClicked(_ sender: UIButton) {
        let userD = UserDefaults()
        userD.set(nameTxt.text, forKey: "Name")
        userD.set(cityTxt.text, forKey: "City")
        userD.set(contactnoTxt.text, forKey: "ContactNo")
       // userD.set(txtSetPasswor.text, forKey: "Password")
        
        userD.synchronize()
        self.performSegue(withIdentifier: "LoginviewToNextView", sender: nil)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
