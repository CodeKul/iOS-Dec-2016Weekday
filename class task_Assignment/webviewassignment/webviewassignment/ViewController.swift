//
//  ViewController.swift
//  webviewassignment
//
//  Created by Varun on 16/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet var myWebview: UIWebView!
    
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    
    @IBOutlet var txturl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "\(txturl.text)")
        
        let request = URLRequest(url : url!)
        
        myWebview.loadRequest(request)
        
    }
    //Delegate
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        myActivityIndicator.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        myActivityIndicator.stopAnimating()
    }

    
    @IBAction func goBtnclicked(_ sender: Any) {
        
        /*myWebview.loadRequest(URLRequest(url : URL(String:" http://... " + txturl.text!)!))
        myWebview.loadRequest(URLRequest(url: URL(string: "http://" + txturl.text!)!))
        
        if txturl.text == nil
        {
            myWebview.loadRequest(URLRequest(url: URL(string: "http")!))
        
            }*/
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

