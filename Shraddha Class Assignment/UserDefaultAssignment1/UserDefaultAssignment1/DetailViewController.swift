//
//  DetailViewController.swift
//  UserDefaultAssignment1
//
//  Created by Codekul on 01/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblContact: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view
    }
    override func viewWillAppear(_ animated : Bool) {
        super.viewWillAppear(animated)
        
        let UD = UserDefaults()
        
        let strName = UD.value(forKey: "Name")
        let strCity = UD.value(forKey: "City")
        let strContactNo = UD.value(forKey: "ContactNo")
        
        if strName != nil
        {
            lblName.text = strName as! String?
        }
        if strCity != nil
        {
            lblCity.text = strCity as! String?
        }
        if strContactNo != nil
        {
            lblContact.text = strContactNo as! String?
        }
        
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    @IBAction func goToHomeBtnClicked(_ sender: UIButton) {
    
        //when we use navigation controller
        
        _ = self.navigationController?.popToRootViewController(animated: true)
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
