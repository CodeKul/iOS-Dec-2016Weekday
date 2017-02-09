//
//  ViewController.swift
//  UserDefaultAssignment1
//
//  Created by Codekul on 01/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

   
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passWordTxt: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        
             super.viewDidLoad()
        
       usernameTxt.text = textInputContextIdentifier
       passWordTxt.text = textInputContextIdentifier
       loginButton = UIButton.value(forKey: "Login") as! UIButton!
        
    }
    
    //UITEXTFEILD Delegate
    func textFieldDidBeginEditing(_ textField: UITextField) {
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
     
        _ = self.navigationController?.pushViewController(self,animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

