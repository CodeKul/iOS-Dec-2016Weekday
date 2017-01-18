//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Varun on 10/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arrColors = ["Red", "Blue", "Green", "Yellow", "Pink", "Black", "White", "Orange", "Purple", "Cyan"]
    
    var arrNames = ["Manish", "John", "Alizee", "Tom", "Jacky", "Justin", "Oscar", "Will", "Zac", "Jack"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    // TableView Datasource methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return arrNames.count
        }
        return arrColors.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Names"
        }
        return "Colors"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        if indexPath.section == 0 {
            cell?.textLabel?.text = arrNames[indexPath.row]
        }
        else {
            cell?.textLabel?.text = arrColors[indexPath.row]
        }
        
        return cell!
    }
    
//    TableView Delegate methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            print("Name: \(arrNames[indexPath.row])")
        }
        else {
            print("Color: \(arrColors[indexPath.row])")
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

