//
//  DetailViewController.swift
//  UserDefalutAssignment2
//
//  Created by Codekul on 02/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var contactLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated : Bool) {
        super.viewWillAppear(animated)
        
        let UD = UserDefaults()
        
        let strName = UD.value(forKey: "Name")
        let strCity = UD.value(forKey: "City")
        let strContactNo = UD.value(forKey: "ContactNo")
        
        if strName != nil
        {
            nameLbl.text = strName as! String?
        }
        if strCity != nil
        {
            cityLbl.text = strCity as! String?
        }
        if strContactNo != nil
        {
            contactLbl.text = strContactNo as! String?
        }

    }
    
    @IBAction func goToButtonClked(_ sender: UIButton) {
        
      //self.dismiss(animated: true, completion: nil)
       self.performSegue(withIdentifier: "DetailviewToHomeView", sender: nil)
        
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
