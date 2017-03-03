//
//  ImageViewController.swift
//  MultiThreadingDemo
//
//  Created by Codekul on 01/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var myImageView : UIImageView!
    @IBOutlet var loader : UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        let url = URL(string : "http://iphonewalls.net/wp-content/uploads/2016/08/Dreamy%20Underwater%20Bubbles%20Sun%20Light%20iPhone%206+%20HD%20Wallpaper.jpg")
        
        loader.startAnimating()
        DispatchQueue.global(qos: .background).async(execute: {
            do {
                let imgData = try Data(contentsOf: url!)
                let img = UIImage(data: imgData)
                
                DispatchQueue.main.async(execute: {
                    
                    self.myImageView.image = img
                    self.loader.stopAnimating()
                })
            }
            catch {
                
            }
        })
        
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
