//
//  ViewController.swift
//  Email Practice 2
//
//  Created by Codekul on 03/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController , MFMailComposeViewControllerDelegate{

    @IBOutlet weak var Subject: UITextField!
    
    @IBOutlet weak var Body: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SendEmail(_ sender: Any)
    {
        var SubjectText = "Hello This Manish "
        SubjectText += Subject.text!
        let MessageBody = Body
        let toRecipients = ["manish.chaudhari99@gmail.com"]
        
        let mc : MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(SubjectText)
        mc.setMessageBody((MessageBody?.text)!, isHTML: false)
        mc.setToRecipients(toRecipients)
        self .present(mc, animated: true, completion: nil)
        
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result.rawValue{
        case MFMailComposeResult.cancelled.rawValue: ("mail Cancelled")
        }
    }
}

