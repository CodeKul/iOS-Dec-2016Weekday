//
//  HomeViewController.swift
//  UserDefalutAssignment2
//
//  Created by Codekul on 02/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

   
    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var passWordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  NameTxt.text = textInputContextIdentifier
      //  passWordTxt.text = textInputContextIdentifier
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        let userD = UserDefaults ()
        let strName = userD.value(forKey: "Name")
        let strPassword = userD.value(forKey: "Password")
        
        if strName != nil {
            nameTxt.text = strName as! String?
        }
        if strPassword != nil {
            passWordTxt.text = strPassword as! String?
        }
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
