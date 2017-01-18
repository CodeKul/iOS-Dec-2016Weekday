//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Varun on 13/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var myWebView : UIWebView!
    @IBOutlet var indicator : UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://www.codekul.com")
        let req = URLRequest(url: url!)
        
        myWebView.delegate = self
        
        myWebView.loadRequest(req)
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        indicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        indicator.stopAnimating()
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
        print("Error \(error)")
        indicator.stopAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

