//
//  ViewController.swift
//  Tableviewassignment
//
//  Created by Varun on 12/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate  {
    
    var arrCity = ["nagpur","Pune","Mumbai","Amravati","Dhule","Kolhapur"]
 
    var arrTemp = ["10c","14c","12c","10c","11c","13c"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   //TableView Datasource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrCity.count
    
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "CityName"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrCity[indexPath.row] + "..............................." + arrTemp[indexPath.row]
        
        return cell
    }
    // tableview Delgate Method
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cityName: \(arrCity[indexPath.row])" + "   " + "Temprature : \(arrTemp[indexPath.row])")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

