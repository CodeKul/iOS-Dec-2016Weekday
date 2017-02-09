//
//  ViewController.swift
//  tableView_23JAN
//
//  Created by Mac on 23/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arrFruits = ["Mango","Apple","Banana","Orange","KIWI","Sapota"]
    var arrVeg = ["Cabbage","Radish","Brocoli","Carrot","Potato","Beans"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        if section == 0{
            return "Fruits"
        }
        else {
            return "Vegetable"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if section == 0 {
            return arrFruits.count
        }
        else {
            return arrVeg.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        if indexPath.section == 0{
            cell?.textLabel?.text = arrFruits[indexPath.row]
        }
        else {
            cell?.textLabel?.text = arrVeg[indexPath.row]
        }
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            print ("Fruits : \(arrFruits[indexPath.row])")
        }
        else {print("Vegetables : \(arrVeg[indexPath.row])")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

