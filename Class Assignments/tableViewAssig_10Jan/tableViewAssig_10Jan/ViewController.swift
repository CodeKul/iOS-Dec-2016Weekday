//
//  ViewController.swift
//  tableViewAssig_10Jan
//
//  Created by Varun on 10/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var arrStates = ["Maharashtra","Delhi","Rajesthan","UttarPradesh","uttarakhand","Kolkata","TamilNadu","Goa","Gujarat"]
    var arrCars = ["BMW","Audi","Mahendra","Tata","Volvo","MarutiSuzuki","Ford","Mitsubushi","Ferrari","Renault"]
    var arrbikes = ["RoyalEnfeild","Benelli","Yamaha","Kawasaki","BMW","Trumph","Vardenchi","Hyoshang","Suzuki","Honda"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
        func numberOfSections(in tableView: UITableView) -> Int{
            return 3
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            if section == 0{
                return arrStates.count
            }
            else if section == 1{
                return arrCars.count
            }
            return arrbikes.count
            
        }
        
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
            if section == 0 {
                return "States"
            }
            else if section == 1{
                return "Car Brand"
            }
            return "Bike Brand"
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            if cell == nil {
                cell = UITableViewCell(style: .default,reuseIdentifier : "cell")
            }
            
            if indexPath.section == 0 {
                cell?.textLabel?.text = arrStates[indexPath.row]
            }
                
            else if indexPath.section == 1 {
                cell?.textLabel?.text = arrCars[indexPath.row]
            }
                
             else{ cell?.textLabel?.text = arrbikes[indexPath.row]
            }
            
            return cell!

    }
//TableView Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            print ("States: \(arrStates[indexPath.row])")
        }
        else if indexPath.section == 1 {
            print("Car Brand : \(arrCars[indexPath.row])")
        }
        else {print("Bike Brand : \(arrbikes[indexPath.row])")
        }
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

