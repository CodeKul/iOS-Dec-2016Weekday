//
//  CarsTableViewController.swift
//  tableViewPractice
//
//  Created by Codekul on 31/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class CarsTableViewController: UITableViewController {

        var car1 = ["Maruti Baleno","Audi R8","BMW i8","Mahindra Thar","Ford Mustang GT","Renault Clio","Mitsubishi Lancer","Lamborghini Aventador","Ferrari 2015 Hybrid","Bugatti Veyron "]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return car1.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath)
        let carName = car1[indexPath.row]
        cell.textLabel?.text = carName
        cell.detailTextLabel?.text = "Awesome!"
        cell.imageView?.image = UIImage(named: carName)
        
        // Configure the cell...
        
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Cars Names"
    }
    }
