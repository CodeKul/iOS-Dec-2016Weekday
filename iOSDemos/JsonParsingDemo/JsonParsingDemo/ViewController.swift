//
//  ViewController.swift
//  JsonParsingDemo
//
//  Created by Codekul on 23/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
        let urlString = "http://api.kivaws.org/v1/loans/search.json?status=fundraising"
        
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with:url!) { (data, response, error) in
            
            if error != nil {
                print("Error while getting data")
                return
            }
            do {
                let parsedData = try JSONSerialization.jsonObject(with: data!, options: []) as! [String:Any]
                
                let loansData = parsedData["loans"] as! Array<[String : Any]>
                
                for dict in loansData {
                    let name = dict["name"]!
                    let locationDict = dict["location"] as! [String:Any]
                    let country = locationDict["country"]!
                    
                    print("Name: \(name)\nCountry: \(country)\n")
                }
            }
            catch let error as NSError {
                print(error)
            }
            
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

