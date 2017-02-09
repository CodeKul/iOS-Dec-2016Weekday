//
//  SecondViewController.swift
//  CollectionViewAssignment2
//
//  Created by Codekul on 03/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class secondViewController: UIViewController  {

    @IBOutlet var imageView :UIImageView!
    var selectedImage : String?
    
    @IBOutlet weak var addView: UIView!
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: selectedImage!)
        
        imageView.startAnimating()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonClicked(_ sender : UIButton) {
        
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
