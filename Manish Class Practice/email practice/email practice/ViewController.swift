//
//  ViewController.swift
//  email practice
//
//  Created by Codekul on 03/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController,MFMailComposeViewControllerDelegate {

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SendMailButton(_ sender: Any)
    {
        let mailCompose = MFMailComposeViewController()
        mailCompose.mailComposeDelegate = self
        mailCompose.setToRecipients(["manish.chaudhari99@gmail.com"])
        mailCompose.setSubject("Test")
        mailCompose.setMessageBody("Hello From Codekul", isHTML: false)
        
        if MFMailComposeViewController.canSendMail()
        {
            self.present(mailCompose, animated: true, completion: nil)
        }
        else
        {
            print ("HA HA...!")
        }
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?)
    {
        controller.dismiss(animated: true, completion: nil)
    }

}

