//
//  SecondViewController.swift
//  NavigationController
//
//  Created by Mac on 24/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var txtFld : UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // UITextField delegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "SecondTothird"{
            
            let tVC = segue.destination as! ThridViewController
            tVC.myData = txtFld.text
            
        }
    }


}
