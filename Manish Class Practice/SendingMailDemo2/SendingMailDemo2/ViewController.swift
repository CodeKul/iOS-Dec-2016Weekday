//
//  ViewController.swift
//  SendingMailDemo2
//
//  Created by Codekul on 03/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import MessageUI


class ViewController: UIViewController, MFMailComposeViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    }
    @IBAction func SendMailButton(_ sender: Any) {
    
            if MFMailComposeViewController.canSendMail() {
                let mail = MFMailComposeViewController()
                mail.mailComposeDelegate = self
                mail.setToRecipients(["ninad.only1@gmail.com"])
                mail.setMessageBody("<p> Mail is here </p>", isHTML: true)
                present(mail, animated: true)
            } else {
                // show failure alert
            }
        }
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            controller.dismiss(animated: true)
            
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

