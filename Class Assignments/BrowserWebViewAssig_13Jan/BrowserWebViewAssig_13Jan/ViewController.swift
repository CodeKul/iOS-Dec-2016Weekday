//
//  ViewController.swift
//  BrowserWebViewAssig_13Jan
//
//  Created by Varun on 13/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet var myWeb : UIWebView!
    @IBOutlet var idicator : UIActivityIndicatorView!
    @IBOutlet var textfld : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let url = URL(string: "http://www.codekul.com")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    //My ButtonClicked
    @IBAction func MyButton(_ sender: Any) {
 
        let url = URL(string: textfld.text!)
        let req = URLRequest(url: url!)
        myWeb.loadRequest(req)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

