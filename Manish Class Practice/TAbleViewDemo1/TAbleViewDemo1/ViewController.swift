//
//  ViewController.swift
//  TAbleViewDemo1
//
//  Created by Codekul on 03/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

var arrAlphabates = ["a","b","c","d","e","f","g","h","i"]
var arrNumbers = ["1","2","3","4","5","6","7","8","9"]


    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return arrAlphabates.count
        }
        else{
            return arrNumbers.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Alphabates"
        }
        return "Numbers"
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil
        {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }

    if indexPath.section == 0
        {
        cell?.textLabel?.text = arrAlphabates[indexPath.row]
        }
    else{
        cell?.textLabel?.text = arrNumbers[indexPath.row]
        }
    
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        if indexPath.section == 0 {
            print("Alphabates: \(arrAlphabates[indexPath.row])")
        }
        else {
            print("Numbers: \(arrNumbers[indexPath.row])")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



